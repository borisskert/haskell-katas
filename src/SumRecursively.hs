module SumRecursively where

-- https://www.codewars.com/kata/57a84137cf1fa5f9f80000d6/train/haskell

sumR :: [Int] -> Int
sumR [] = 0
sumR [x] = x
sumR (x:others) = x + sumR others
