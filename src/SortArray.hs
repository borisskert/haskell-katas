module SortArray where

-- https://www.codewars.com/kata/578aa45ee9fd15ff4600090d/train/haskell

import Data.List (sort)

sortArray :: [Int] -> [Int]
sortArray xs = go xs odds
  where
    odds = sort . filter odd $ xs

    go :: [Int] -> [Int] -> [Int]
    go xs [] = xs
    go [] os = os
    go (x : xs) odds@(o : os)
      | odd x = o : go xs os
      | otherwise = x : go xs odds
