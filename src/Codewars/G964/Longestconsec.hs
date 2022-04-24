module Codewars.G964.Longestconsec where

-- https://www.codewars.com/kata/56a5d994ac971f1ac500003e/train/haskell

import Data.List (groupBy, sortOn)
import Data.List.Split (divvy)

longestConsec :: [String] -> Int -> String
longestConsec xs i
  | length notNulls < i = ""
  | otherwise = go xs i
  where
    notNulls = filter (not . null) xs
    nulls = filter null xs

    go [] _ = []
    go _ 0 = []
    go strarr 1 = head . last . groupOn length . sortOn length $ strarr
    go strarr k
      | length strarr < k = []
      | otherwise =
        head
          . last
          . groupOn length
          . sortOn length
          . map concat
          . divvy k 1
          $ strarr

groupOn :: (Eq b) => (a -> b) -> [a] -> [[a]]
groupOn get = groupBy (\a b -> get a == get b)
