module CandyProblem where

-- https://www.codewars.com/kata/55466644b5d240d1d70000ba/train/haskell

candies :: [Int] -> Int
candies [] = -1
candies [_] = -1
candies xs = max * count - sum xs
  where
    max = maximum xs :: Int
    count = length xs :: Int
