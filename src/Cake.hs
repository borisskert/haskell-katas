module Cake where

-- https://www.codewars.com/kata/58c8a41bedb423240a000007/train/haskell

cakeSlice :: Int -> Int
cakeSlice n = n * (n + 1) `div` 2 + 1
