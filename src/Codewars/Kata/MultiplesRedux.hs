module Codewars.Kata.MultiplesRedux where

-- https://www.codewars.com/kata/54bb6ee72c4715684d0008f9/train/haskell

solution :: Integer -> Integer
solution n = sum3 + sum5 - sum15
  where
    sum3 = gaussN 3 $ n - 1
    sum5 = gaussN 5 $ n - 1
    sum15 = gaussN 15 $ n - 1

gaussN :: Integer -> Integer -> Integer
gaussN divident = (* divident) . gauss . (`div` divident)

gauss :: Integer -> Integer
gauss n = n * (n + 1) `div` 2
