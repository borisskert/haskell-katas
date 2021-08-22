module Codewars.Exercise.Squares where

-- https://www.codewars.com/kata/5546180ca783b6d2d5000062/train/haskell

squares :: Integer -> Int -> [Integer]
squares x n = take n $ iterate (\x -> x * x) x
