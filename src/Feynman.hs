module Feynman where

-- https://www.codewars.com/kata/551186edce486caa61000f5c/train/haskell

countSquares :: Integer -> Integer
countSquares 0 = 0
countSquares n = n * n + countSquares (n - 1)
