module ReverseList where

-- https://www.codewars.com/kata/57a04da9e298a7ee43000111/train/haskell

reverseList :: [Int] -> [Int]
reverseList [] = []
reverseList list = reverseList (tail list) ++ [head list]
