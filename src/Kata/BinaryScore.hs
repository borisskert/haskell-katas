module Kata.BinaryScore where

-- https://www.codewars.com/kata/56cafdabc8cfcc3ad4000a2b/train/haskell

score :: Integer -> Integer
score = (+ (-1)) . (2 ^) . log2

log2 :: Integer -> Integer
log2 x = count x 0
  where
    count :: Integer -> Integer -> Integer
    count x size
      | x <= 0 = size
      | otherwise = count (x `div` 2) (size + 1)
