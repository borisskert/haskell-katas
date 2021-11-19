module SortByLastCharacter (sortMe) where

-- https://www.codewars.com/kata/55aea0a123c33fa3400000e7/train/haskell

import Data.List (sortOn)

sortMe :: [String] -> [String]
sortMe = sortOn last
