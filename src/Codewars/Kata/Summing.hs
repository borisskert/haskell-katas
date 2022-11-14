module Codewars.Kata.Summing where

--  https://www.codewars.com/kata/54c2fc0552791928c9000517/train/haskell

f :: Integer -> Integer -> Integer
f n m = factor * sumAll + rest
  where
    factor = n `div` m
    sumAll = gauss (m - 1)
    rest = gauss (n `mod` m)

gauss :: Integer -> Integer
gauss n = n * (n + 1) `div` 2
