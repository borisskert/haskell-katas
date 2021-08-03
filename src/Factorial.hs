module Factorial where

-- https://www.codewars.com/kata/57a049e253ba33ac5e000212/train/haskell

factorial :: Int -> Int
factorial 0 = 1
factorial 1 = 1
factorial n = multiply [2, 3 .. n]
  where
    multiply :: [Int] -> Int
    multiply [] = 0
    multiply [x] = x
    multiply [x1, x2] = x1 * x2
    multiply (x1:x2:others) = x1 * x2 * multiply others
