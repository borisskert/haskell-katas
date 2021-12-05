module Codewars.Exercise.AlphaN where

-- https://www.codewars.com/kata/54eea36b7f914221eb000e2f/train/haskell

import Data.List (sortBy)

sortIt :: [String] -> Int -> [String]
sortIt xs n = sortBy (byNth (n - 1)) xs

byNth :: Int -> String -> String -> Ordering
byNth n a b
  | a' == b' = compare a b
  | otherwise = compare a' b'
  where
    a' = a !! n
    b' = b !! n
