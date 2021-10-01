module Codewars.Arrays1 where

-- https://www.codewars.com/kata/5715eaedb436cf5606000381/train/haskell

positiveSum :: [Int] -> Int
positiveSum [] = 0
positiveSum (x:rest) = do
  if x > 0
    then x + positiveSum rest
    else positiveSum rest
