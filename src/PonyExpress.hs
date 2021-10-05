module PonyExpress where

-- https://www.codewars.com/kata/5b18e9e06aefb52e1d0001e9/train/haskell

riders :: [Int] -> Int
riders = (+ 1) . estimate 0
  where
    estimate :: Int -> [Int] -> Int
    estimate _ [] = 0
    estimate miles (x1:others)
      | miles + x1 <= 100 = estimate (miles + x1) others
      | otherwise = 1 + estimate x1 others
