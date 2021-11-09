module Codewars.SumAndMultiply where

-- https://www.codewars.com/kata/59971206e06bbf4407002382/train/haskell

sumAndMultiply :: Int -> Int -> [Int]
sumAndMultiply s m
  | null numbers = []
  | otherwise = head numbers
  where
    numbers =
      map (\(x, y) -> [x, y])
        . filter (\(x, y) -> x * y == m)
        . filter (\(x, y) -> x + y == s)
        . (\xs -> [(x, y) | x <- xs, y <- xs])
        $ [0 .. 1000]
