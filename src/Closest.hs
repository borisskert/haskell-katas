module Closest where

-- https://www.codewars.com/kata/58249d08b81f70a2fc0001a4/train/haskell

closestMultiple10 :: Int -> Int
closestMultiple10 = (* 10) . (`div` 10) . (+ 5)
