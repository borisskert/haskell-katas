module SortBy where

-- https://www.codewars.com/kata/57eba158e8ca2c8aba0002a0/train/haskell

import Data.List (sortBy)


last' :: String -> [String]
last' = sortBy compareLastLetters . words


compareLastLetters :: String -> String -> Ordering
compareLastLetters a b = compare (last a) (last b)
