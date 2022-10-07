module Mirror1 (mirror) where

-- https://www.codewars.com/kata/5f55ecd770692e001484af7d/train/haskell

import Data.List (sort)


mirror :: [Int] -> [Int]
mirror [] = []
mirror xs = sortedInit ++ last sorted : reverse sortedInit
  where
    sorted = sort xs
    sortedInit = init sorted
