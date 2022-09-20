module LongestAlphabeticalSubstring (longest) where

-- https://www.codewars.com/kata/5a7f58c00025e917f30000f1/train/haskell

import Data.List (sortOn)
import Data.Ord (Down (Down))

longest :: String -> String
longest = maximumOn length . groupWhile (<=)

groupWhile :: (a -> a -> Bool) -> [a] -> [[a]]
groupWhile _ [] = []
groupWhile _ [x] = [[x]]
groupWhile eq (x : xs)
  | eq x y = (x : head groups) : tail groups
  | otherwise = [x] : groups
  where
    y = head . head $ groups
    groups = groupWhile eq xs

maximumOn :: (Eq b, Ord b) => (a -> b) -> [a] -> a
maximumOn fn = head . sortOn (Down . fn)
