module AreaOfPolygonInsideCircle (areaOfPolygonInsideCircle) where

--  https://www.codewars.com/kata/5a58ca28e626c55ae000018a/train/haskell

areaOfPolygonInsideCircle :: Double -> Int -> Double
areaOfPolygonInsideCircle circleRadius numberOfSides = roundN 3 area
  where
    n = fromIntegral numberOfSides :: Double
    angle = (* pi) . (/ (n * 2)) $ (n - 2) :: Double
    area = cos angle * sin angle * circleRadius * circleRadius * n :: Double

roundN :: Int -> Double -> Double
roundN n = (/ 10 ^ n) . fromInteger . round . (* 10.0 ^ n)
