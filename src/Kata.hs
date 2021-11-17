module Kata (findOutlier) where

-- https://www.codewars.com/kata/5526fc09a1bbd946250002dc/train/haskell

findOutlier :: [Int] -> Int
findOutlier xs
  | length odds == 1 = head odds
  | otherwise = head evens
  where
    evens = filter even xs
    odds = filter odd xs
