module Diff where 

-- https://www.codewars.com/kata/5b73fe9fb3d9776fbf00009e/train/haskell

import Data.List (sort)

sumOfDifferences :: [Int] -> Maybe Int
sumOfDifferences []  = Nothing
sumOfDifferences [_] = Nothing
sumOfDifferences numbers = Just (sumOfDifferencesRecursive (reverse (sort numbers)))
  where
    sumOfDifferencesRecursive :: [Int] -> Int
    sumOfDifferencesRecursive [first, second] = first - second
    sumOfDifferencesRecursive (first:second:others) = first - second + sumOfDifferencesRecursive (second : others)
