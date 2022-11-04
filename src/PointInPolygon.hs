module PointInPolygon where

-- https://www.codewars.com/kata/530265044b7e23379d00076a/train/haskell

import Data.Either (fromLeft, fromRight, isLeft, isRight)
import Data.List.Split (divvy)
import Data.Maybe (fromJust, isJust, isNothing)
import System.Random

type Point = (Double, Double)

pointInPoly :: [Point] -> Point -> Bool
pointInPoly poly point = traceShow(poly, point) bla
  where
    -- lines = filter (ray `areIntersecting`) . map (\(a : b : _) -> distance a b) . divvy 2 1 $ poly
    -- linesAbove = length lines
    -- distances = map (\(a : b : _) -> distance a b) . divvy 2 1 $ poly
    -- ray = map (\ray -> map (areIntersecting ray) $ distances) . map (\p -> (point, p)) $ poly
    -- rays = map (\p -> (point, p)) $ poly
    -- bla = all odd . (\x -> traceShow (x) x) . filter (> 0) . map (\ray -> length . filter (== True) . map (fromRight False) . filter isRight . (\x -> traceShow (x) x) . map (\distance -> areIntersecting ray distance) $ distances) $ rays
    -- lines = map (`lineThrough` point) $ [0.1, 0.2 ..]
    rays = raysFrom point
    distances = map (\(a : b : _) -> distance a b) . divvy 2 1 $ poly
    bla = odd. head . map fromJust . filter isJust . map (\ ray -> howManyIntersections ray distances) $ rays

howManyIntersections :: Ray -> [Distance] -> Maybe Int
howManyIntersections ray distances
  | any isLeft intersecting = Nothing
  | otherwise = Just . length . filter (== True) . map (fromRight False) $ intersecting
  where
    intersecting = map (areIntersecting ray) distances

-- y = mx + t
type StraightLine = (Double, Double)

lineThrough :: Double -> Point -> StraightLine
lineThrough angle (x, y) = (m, t)
  where
    m = tan angle
    t = y - m * x

lineOf :: Point -> Point -> StraightLine
lineOf (x1, y1) (x2, y2) = (m, t)
  where
    m = (y1 - y2) / (x1 - x2)
    t = x1 * m - y1

isBelow :: Point -> StraightLine -> Bool
isBelow (x, y) (m, t) = x * m + t > y

type Ray = (Point, Point)

rayFrom :: Point -> Double -> Ray
rayFrom point@(px, py) angle = (point, (px + x, py + y))
  where
    x = sin (angle / 180 * pi)
    y = cos (angle / 180 * pi)

raysFrom :: Point -> [Ray]
raysFrom point@(x, y) = map (\angle ->  point `rayFrom` angle) $ [0..360]

type Distance = (Point, Point)

distance :: Point -> Point -> Distance
distance a b = (a, b)

areIntersecting :: Ray -> Distance -> Either Distance Bool
areIntersecting ray distance
  | isLeft eitherIntersection = Left distance
  | otherwise = Right . isJust . fromRight Nothing $ eitherIntersection
  where
    eitherIntersection = intersectRayWithDistance ray distance

intersectRayWithDistance :: Ray -> Distance -> Either Distance (Maybe Point)
intersectRayWithDistance ray distance
  | isLeft eitherIntersection = Left intersectionDistance
  | isNothing maybeIntersection = Right Nothing
  | distanceLengthAB < distanceLength distanceA intersection = Right Nothing
  | distanceLengthAB < distanceLength distanceB intersection = Right Nothing
  | otherwise = Right $ maybeIntersection
  where
    (rayA, rayB) = ray
    rayLine = lineOf rayA rayB
    (distanceA, distanceB) = distance
    distanceLine = lineOf distanceA distanceB
    eitherIntersection = intersectLines rayLine distanceLine
    maybeIntersection = fromRight Nothing eitherIntersection
    intersection = fromJust maybeIntersection
    distanceLengthAB = distanceLength distanceA distanceB
    intersectionDistance
      | distanceLength rayA distanceA < distanceLengthAB && distanceLength rayB distanceB < distanceLengthAB = (distanceA, rayA)
      | otherwise = distance

intersectRayWithLine :: Ray -> StraightLine -> Either Ray (Maybe Point)
intersectRayWithLine ray line
  | isLeft eitherIntersection = Left ray
  | isNothing maybeIntersection = Right Nothing
  | distanceLength rayA intersection > distanceLength rayB intersection = Right maybeIntersection
  | distanceLength rayA rayB > distanceLength rayB intersection && distanceLength rayA rayB > distanceLength rayA intersection = Right maybeIntersection
  | otherwise = Right Nothing
  where
    (rayA, rayB) = ray
    rayLine = lineOf rayA rayB
    eitherIntersection = intersectLines rayLine line
    maybeIntersection = fromRight Nothing eitherIntersection
    intersection = fromJust maybeIntersection

intersectLines :: StraightLine -> StraightLine -> Either StraightLine (Maybe Point)
intersectLines g@(m1, t1) (m2, t2)
  | m1 == m2 && t1 == t2 = Left g
  | m1 == m2 = Right Nothing
  | otherwise = Right . Just $ (x, y)
  where
    x = (t2 - t1) / (m1 - m2)
    y = m1 * x + t1

distanceLength :: Point -> Point -> Double
distanceLength (x1, y1) (x2, y2) = sqrt (x + y)
  where
    x = (x2 - x1) ** 2
    y = (y2 - y1) ** 2
