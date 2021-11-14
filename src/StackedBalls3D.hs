module StackedBalls3D (stack) where

-- https://www.codewars.com/kata/5bbad1082ce5333f8b000006/train/haskell

stack :: Int -> Double
stack 0 = 0.0
stack n = round3 . (+ 1.0) . (* sinAngle) . fromIntegral . (+ (-1)) $ n
  where
    sinAngle = sin angle :: Double
    angle = atan . sqrt $ 2 :: Double

round3 :: Double -> Double
round3 = (/ 10 ^ n) . fromInteger . round . (* 10.0 ^ n)
  where
    n = 3
