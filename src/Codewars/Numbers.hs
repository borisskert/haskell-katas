module Codewars.Numbers where

-- https://www.codewars.com/kata/56aed5db9d5cb55de000001c/train/haskell

twoCount :: Int -> Int
twoCount n
  | even n = 1 + twoCount (n `div` 2)
  | otherwise = 0
