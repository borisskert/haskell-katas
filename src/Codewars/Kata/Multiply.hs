module Codewars.Kata.Multiply where

--  https://www.codewars.com/kata/5708f682c69b48047b000e07/train/haskell

multiply :: Integer -> Integer
multiply n
  | n > 0 = n * (5 ^ exponent)
  | n < 0 = 0 - (abs (n * (5 ^ (exponent - 1))))
  | otherwise = 0
  where
    exponent = length $ show n
