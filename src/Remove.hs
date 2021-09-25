module Remove where

-- https://www.codewars.com/kata/563089b9b7be03472d00002b/train/haskell

remove :: [Int] -> [Int] -> [Int]
remove elements toRemove = filter (not . (`elem` toRemove)) elements
