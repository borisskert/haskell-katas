module SortByLength (sortByLength) where

import Data.List (sortOn)

-- https://www.codewars.com/kata/57ea5b0b75ae11d1e800006c/train/haskell
sortByLength :: [String] -> [String]
sortByLength = sortOn length
