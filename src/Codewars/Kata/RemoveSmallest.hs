module Codewars.Kata.RemoveSmallest where

--  https://www.codewars.com/kata/563cf89eb4747c5fb100001b/train/haskell

--best practice:
--import Data.List (delete)
--
--removeSmallest :: Ord a => [a] -> [a]
--removeSmallest xs = delete (minimum xs) xs

import Data.List (sortBy)


removeSmallest :: [Int] -> [Int]
removeSmallest [] = []
removeSmallest xs = map toValue . sortByIndex $ (tail sortedByValue)
  where
    elements = zip [1..] xs :: [Element]
    sortedByValue = sortByValue elements


-- Index, Value
type Element = (Int, Int)


toValue :: Element -> Int
toValue (_, value) = value


sortByIndex :: [Element] -> [Element]
sortByIndex = sortBy compareIndex


sortByValue :: [Element] -> [Element]
sortByValue = sortBy compareValue


compareIndex (indexA, _) (indexB, _) = compare indexA indexB
compareValue (_, valueA) (_, valueB) = compare valueA valueB
