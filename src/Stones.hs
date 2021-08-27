module Stones (solution) where

-- https://www.codewars.com/kata/5f70e4cce10f9e0001c8995a/train/haskell

--best practice:
-- import Data.List (group)

-- solution :: String -> Int
-- solution s = length s - length (group s)


solution :: String -> Int
solution stones = originalStones - withoutDuplicates
  where
    originalStones = length stones
    withoutDuplicates = length . removePairs $ stones

    removePairs :: String -> String
    removePairs [] = []
    removePairs [c] = [c]
    removePairs (x1:x2:others)
      | x1 == x2 = removePairs (x2:others)
      | otherwise = x1 : removePairs (x2:others)
 