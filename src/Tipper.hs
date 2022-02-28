module Tipper where

-- https://www.codewars.com/kata/568c3498e48a0231d200001f/train/haskell

calcTip :: Int -> Int -> Int
calcTip price rating = maximum [0, tip]
  where
    tip = rate . tipOf $ price

    rate :: (Int -> Int)
    rate
      | rating == 1 = (+ 1)
      | rating == 0 = (+ negate 1)
      | rating == (-1) = (+ negate 1) . (`div` 2)

    tipOf :: Int -> Int
    tipOf = round' . (/ 10) . fromIntegral
      where
        round' :: Double -> Int
        round' = round . (+ 0.001)
