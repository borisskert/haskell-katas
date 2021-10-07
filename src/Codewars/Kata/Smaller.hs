module Codewars.Kata.Smaller where

-- https://www.codewars.com/kata/56a1c074f87bc2201200002e/train/haskell

-- best practice:
-- smaller :: Ord a => [a] -> [Int]
-- smaller [] = []
-- smaller (x:xs) = length (filter (<x) xs) : smaller xs

smaller :: Ord a => [a] -> [Int]
smaller xs = map (\(index1, value1) -> length . filter (\(index2, value2) -> index2 > index1 && value2 < value1) $ withIndices) withIndices
  where
    withIndices = zip [0..] xs
