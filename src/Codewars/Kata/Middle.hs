module Codewars.Kata.Middle where

--  https://www.codewars.com/kata/545a4c5a61aa4c6916000755/train/haskell

import Data.List (sort)


gimme :: Ord a => (a, a, a) -> Int
gimme (a, b, c)
  | a == value = 0
  | b == value = 1
  | c == value = 2
  | otherwise = error "Not found"
  where
    sorted = sort [a, b, c]
    value = middle sorted 


middle :: Ord a => [a] -> a
middle (_:a:_) = a
