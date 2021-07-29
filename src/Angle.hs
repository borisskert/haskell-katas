module Angle where

-- https://www.codewars.com/kata/5a03b3f6a1c9040084001765/train/haskell

angle::Int -> Int
angle n
  | n < 0 = angle (abs n + 4) * (-1)
  | n >= 2 = 180 * (n - 2)
  | otherwise = angle (abs (n - 4)) * (-1)
