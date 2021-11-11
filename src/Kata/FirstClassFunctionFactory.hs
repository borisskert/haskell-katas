module Kata.FirstClassFunctionFactory where

-- https://www.codewars.com/kata/563f879ecbb8fcab31000041/train/haskell

factory :: Int -> [Int] -> [Int]
factory x = map (* x)
