module StackedBalls3D1 (stack) where

-- https://www.codewars.com/kata/5bb493932ce53339dc0000c2/train/haskell

stack :: Int -> Double
stack 0 = 0.0
stack n = round4 . (+ 1.0) . (* sin45) . fromIntegral . (+ (-1)) $ n
  where
    sin45 = sqrt 2.0 / 2.0

round4 :: Double -> Double
round4 = (/ 10 ^ n) . fromInteger . round . (* 10.0 ^ n)
  where
    n = 4
