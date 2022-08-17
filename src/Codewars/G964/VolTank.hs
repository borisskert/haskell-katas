module Codewars.G964.VolTank where

-- https://www.codewars.com/kata/55f3da49e83ca1ddae0000ad/train/haskell

tankvol :: Int -> Int -> Int -> Int
tankvol h d vt = floor . (* circleSegment) $ cylinderLength
  where
    diameter = fromIntegral d :: Double
    liquidHeight = fromIntegral h :: Double
    radius = 0.5 * diameter
    surfaceArea = radius * radius * pi
    cylinderLength = (/ surfaceArea) . fromIntegral $ vt
    circularArc = (2.0 *) . acos . (/ radius) . (+ negate liquidHeight) $ radius
    circleSegment = 0.5 * radius * radius * (circularArc - sin circularArc)
