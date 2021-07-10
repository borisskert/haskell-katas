module Codewars.G964.NoZeros where

-- https://www.codewars.com/kata/570a6a46455d08ff8d001002/train/haskell

noBoringZeros :: Int -> Int
noBoringZeros n
  | abs n > 10 && n `mod` 10 == 0 = noBoringZeros (n `div` 10)
  | otherwise                     = n
