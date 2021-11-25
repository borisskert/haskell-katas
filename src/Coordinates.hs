module Coordinates where

-- https://www.codewars.com/kata/555f43d8140a6df1dd00012b/train/haskell

coordinates :: Double -> Double -> (Double, Double)
coordinates angle radius = (cosAngle * radius, sinAngle * radius)
  where
    cosAngle = cos radian
    sinAngle = sin radian

    radian = (/ 180) . (* pi) $ angle
