module Codewars.Kata.Divisible where

-- https://www.codewars.com/kata/558ee8415872565824000007/train/haskell

isDivisible :: Integral n => n -> [n] -> Bool
isDivisible n = all (\x -> n `mod` x == 0)
