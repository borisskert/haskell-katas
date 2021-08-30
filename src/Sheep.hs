module Sheep where

-- https://www.codewars.com/kata/58e0f0bf92d04ccf0a000010/train/haskell

lostSheep :: [Int] -> [Int] -> Int -> Int
lostSheep group1 group2 sheeps = sheeps - sum group1 - sum group2
