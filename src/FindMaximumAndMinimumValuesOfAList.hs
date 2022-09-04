module FindMaximumAndMinimumValuesOfAList (minimum, maximum) where

--  https://www.codewars.com/kata/577a98a6ae28071780000989/train/haskell

import Prelude hiding (maximum, minimum)

minimum :: [Int] -> Int
minimum [x] = x
minimum (x1 : x2 : xs)
  | x1 <= x2 = minimum (x1 : xs)
  | otherwise = minimum (x2 : xs)

maximum :: [Int] -> Int
maximum [x] = x
maximum (x1 : x2 : xs)
  | x1 >= x2 = maximum (x1 : xs)
  | otherwise = maximum (x2 : xs)
