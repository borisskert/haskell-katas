module Codewars.G964.Simpson (simpson) where

-- https://www.codewars.com/kata/565abd876ed46506d600000d/train/haskell

simpson :: Int -> Double
simpson n =
  (b - a) / (3 * n')
    * ( f a + f b + 4
          * summation 1 (n' / 2) (\i -> f (a + (2 * i - 1) * h)) + 2
          * summation 1 ((n' / 2) - 1) (\i -> f (a + 2 * i * h))
      )
  where
    n' = fromIntegral n
    a = 0
    b = pi
    h = (b - a) / n'

f :: Double -> Double
f x = (3 / 2) * (sin x ** 3)

summation :: Double -> Double -> (Double -> Double) -> Double
summation i end fn
  | i > end = 0
  | otherwise = fn i + next
  where
    next = summation (i + 1) end fn
