module BreakingChocolate where

--  https://www.codewars.com/kata/534ea96ebb17181947000ada/train/haskell

breakChocolate :: Int -> Int -> Int
breakChocolate n m
  | n <= 0 || m <= 0 = 0
  | otherwise        = n * m - 1
