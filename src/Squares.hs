module Squares where

-- https://www.codewars.com/kata/5a62da60d39ec5d947000093/train/haskell

findSquares :: Int -> Int -> Int
findSquares 0 _ = 0
findSquares _ 0 = 0
findSquares a b = a * b + findSquares (a - 1) (b - 1)
