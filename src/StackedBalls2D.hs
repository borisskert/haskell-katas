module StackedBalls2D (stack) where

-- https://www.codewars.com/kata/5bb804397274c772b40000ca/train/haskell

stack :: Int -> Double
stack 0 = 0.0
stack n = round3 . (+ 1.0) . (* sin60) . fromIntegral . (+ (-1)) $ n
  where
    sin60 = sqrt 3.0 / 2.0


round3 :: Double -> Double
round3 = (/ 10 ^ n) . fromInteger . round . (* 10.0 ^ n)
  where n = 3
