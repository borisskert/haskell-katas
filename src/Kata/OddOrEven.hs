module Kata.OddOrEven where

--  https://www.codewars.com/kata/5949481f86420f59480000e7/train/haskell

oddOrEven :: Integral a => [a] -> String
oddOrEven xs
  | even sumXs = "even"
  | otherwise  = "odd"
  where sumXs = sum xs
