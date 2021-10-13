module Kata.InvisibleCubes where

-- https://www.codewars.com/kata/560d6ebe7a8c737c52000084/train/haskell

notVisibleCubes :: Integer -> Integer
notVisibleCubes n
  | n > 2 = (n - 2) ^ 3
  | otherwise = 0
