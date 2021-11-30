module Codewars.Kata.DoubleEveryOther where

-- https://www.codewars.com/kata/5809c661f15835266900010a/train/haskell

doubleEveryOther :: [Integer] -> [Integer]
doubleEveryOther = zipWith (\index x -> (if odd index then 2 * x else x)) [0 ..]

-- very clever:
-- doubleEveryOther :: [Integer] -> [Integer]
-- doubleEveryOther = zipWith (*) (cycle [1,2])
