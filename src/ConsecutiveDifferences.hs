module ConsecutiveDifferences (differences) where

-- https://www.codewars.com/kata/5ff22b6e833a9300180bb953/train/haskell

differences :: [Int] -> Int
differences [x] = x
differences xs = differences (next xs)
  where
    next :: [Int] -> [Int]
    next [x1, x2] = [abs (x1 - x2)]
    next (x1:x2:others) = abs (x1 - x2) : next (x2:others)
