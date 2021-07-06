module Summation where

-- https://www.codewars.com/kata/55d24f55d7dd296eb9000030/train/haskell

summation :: Integer -> Integer
summation n = n * (n + 1) `div` 2
