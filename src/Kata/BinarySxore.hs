module Kata.BinarySxore where

-- https://www.codewars.com/kata/56d3e702fc231fdf72001779/train/haskell

sxore :: Integer -> Integer
sxore n
  | isEven && even halfN = n
  | isEven && odd halfN = n + 1
  | not isEven && odd halfN = 0
  | not isEven && even halfN = 1
  | otherwise = error "Should not see me :)"
  where
    isEven = even n
    halfN = n `div` 2
