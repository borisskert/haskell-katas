module Codewars.Kata.Cuboids where

-- https://www.codewars.com/kata/58cb43f4256836ed95000f97/train/haskell

findDifference :: (Int, Int, Int) -> (Int, Int, Int) -> Int
findDifference first second = abs (volume first - volume second)


volume :: (Int, Int, Int) -> Int
volume (a, b, c) = a * b * c
