module TripleShiftian where

-- https://www.codewars.com/kata/56b7526481290c2ff1000c75/train/haskell

tripleShiftian :: (Integer, Integer, Integer) -> Int -> Integer
tripleShiftian (x1, x2, x3) 0 = x1
tripleShiftian (x1, x2, x3) 1 = x2
tripleShiftian (x1, x2, x3) 2 = x3
tripleShiftian (x1, x2, x3) n = tripleShiftian (n1, n2, n3) (n - 3)
  where
    n1 = 4 * x3 - 5 * x2 + 3 * x1
    n2 = 4 * n1 - 5 * x3 + 3 * x2
    n3 = 4 * n2 - 5 * n1 + 3 * x3
