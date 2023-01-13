module Unsorted (findDup) where

-- https://www.codewars.com/kata/558f0553803bc3c4720000af/train/haskell

import Data.Set (Set, empty, insert, member)

findDup :: [Int] -> Int
findDup = firstDuplicate empty

firstDuplicate :: (Ord a) => Set a -> [a] -> a
firstDuplicate found (x : xs)
  | member x found = x
  | otherwise = firstDuplicate (insert x found) xs
