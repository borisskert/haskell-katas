module MissingTree (findTheMissingTree) where

-- https://www.codewars.com/kata/58aa8698ae929e1c830001c7/train/haskell

import Data.List (group, sort, sortOn)

findTheMissingTree :: [Int] -> Int
findTheMissingTree = head . head . sortOn length . group . sort
