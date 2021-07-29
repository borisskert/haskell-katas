module FlatSort where

-- https://www.codewars.com/kata/57ee99a16c8df7b02d00045f/train/haskell

import Data.List (sort)


flatSort :: [[Int]] -> [Int]
flatSort = sort . flatten


flatten :: [[Int]] -> [Int]
flatten [] = []
flatten [i] = i
flatten (i:others) = i ++ flatSort others
