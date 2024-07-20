module SumUniques (sumNoDuplicates) where

-- https://www.codewars.com/kata/5993fb6c4f5d9f770c0000f2/train/haskell

import Data.List (nub, (\\))

sumNoDuplicates :: [Int] -> Int
sumNoDuplicates xs = sum . filter (`notElem` duplicates) $ unique
  where
    unique = nub xs
    duplicates = xs \\ unique
