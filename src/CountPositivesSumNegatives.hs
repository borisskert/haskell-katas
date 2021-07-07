module CountPositivesSumNegatives where

-- https://www.codewars.com/kata/576bb71bbbcf0951d5000044/train/haskell

countPositivesSumNegatives :: Maybe [Int] -> [Int]
countPositivesSumNegatives maybeArray = case maybeArray of
  Just []    -> []
  Just array -> [length (filter (>0) array)] ++ [sum (filter (<0) array)]
  Nothing    -> []
