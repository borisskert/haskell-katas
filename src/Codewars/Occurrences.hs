module Codewars.Occurrences where

-- https://www.codewars.com/kata/52829c5fe08baf7edc00122b/train/haskell

numberOfOccurrences :: Eq a => a -> [a] -> Int
numberOfOccurrences x = length . filter (== x)
