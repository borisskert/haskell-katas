module Kata where

-- https://www.codewars.com/kata/57241e0f440cd279b5000829/train/haskell

sumMul :: Int -> Int -> Maybe Int
sumMul n m
  | n > 0 && m > 0  && n < m = Just (sumMulRecursive n m 1)
  | otherwise = Nothing
  where
    sumMulRecursive :: Int -> Int -> Int -> Int
    sumMulRecursive n m i
      | (n * i) < m = (n * i) + (sumMulRecursive n m (i + 1))
      | otherwise   = 0
