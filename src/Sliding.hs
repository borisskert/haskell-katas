module Sliding where

-- https://www.codewars.com/kata/55f8b5b09ec923860200000f/train/haskell

sliding :: [Int] -> Int -> [Int]
sliding xs i = recursively (take i xs) (drop i xs)
  where
    recursively :: [Int] -> [Int] -> [Int]
    recursively [] _ = []
    recursively xs [] = [maximum xs]
    recursively current following = maximum current : recursively nextCurrent nextFollowing
      where
        nextCurrent = (++ [head following]) . tail $ current
        nextFollowing = tail following
