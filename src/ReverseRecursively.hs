module ReverseRecursively where

--  https://www.codewars.com/kata/57a883cfbb9944a97c000088/train/haskell

revR :: [Int] -> [Int]
revR [] = []
revR [one] = [one]
revR (first:others) = revR others ++ [first]
