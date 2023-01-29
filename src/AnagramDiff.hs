module AnagramDiff where

-- https://www.codewars.com/kata/5b1b27c8f60e99a467000041/train/haskell

import Data.List (sort)

anagramDifference :: String -> String -> Int
anagramDifference xs ys = go (sort xs) (sort ys)
  where
    go [] ys = length ys
    go xs [] = length xs
    go xs@(x : xs') ys@(y : ys')
      | x == y = go xs' ys'
      | x < y = 1 + go xs' ys
      | otherwise = 1 + go xs ys'
