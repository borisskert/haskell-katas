module Codewars.Kata.Easyline where

-- https://www.codewars.com/kata/56e7d40129035aed6c000632/train/haskell

easyLine :: Integer -> Integer
easyLine n = combinations (n * 2) n


combinations :: Integer -> Integer -> Integer
combinations 0 0 = 1
combinations n k = factorial n `div` (factorial k * factorial (n - k))


factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n - 1)
