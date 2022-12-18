module ArrayCombos where

-- https://www.codewars.com/kata/59e66e48fc3c499ec5000103/train/haskell

import Data.List (nub)

solve :: [[Int]] -> Int
solve = product . map (length . nub)
