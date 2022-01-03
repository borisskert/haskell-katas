module PairZeros (pairZeros) where

-- https://www.codewars.com/kata/54e2213f13d73eb9de0006d2/train/haskell

pairZeros :: [Int] -> [Int]
pairZeros = keep
  where
    keep :: [Int] -> [Int]
    keep [] = []
    keep (x : xs)
      | x == 0 = 0 : discard xs
      | otherwise = x : keep xs

    discard :: [Int] -> [Int]
    discard [] = []
    discard (x : xs)
      | x == 0 = keep xs
      | otherwise = x : discard xs
