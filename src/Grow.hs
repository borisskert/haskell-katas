module Grow (grow) where

-- https://www.codewars.com/kata/57f780909f7e8e3183000078/train/haskell

grow :: [Int] -> Int
grow [n] = n
grow (first:others) = first * grow (others)
