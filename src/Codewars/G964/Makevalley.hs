module Codewars.G964.Makevalley where

-- https://www.codewars.com/kata/56e3cd1d93c3d940e50006a4/train/haskell

import Data.List (sort)


makeValley :: [Int] -> [Int]
makeValley arr = left sorted
  where
    size = length arr
    sorted = reverse . sort $ arr
    
    left :: [Int] -> [Int]
    left [] = []
    left xs = head xs : right (tail xs)

    right :: [Int] -> [Int]
    right [] = []
    right xs = left (tail xs) ++ [head xs]
