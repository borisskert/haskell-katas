module UniqueInOrder (uniqueInOrder) where

-- https://www.codewars.com/kata/54e6533c92449cc251001667/train/haskell

import Data.List (group)

uniqueInOrder :: Eq a => [a] -> [a]
uniqueInOrder = map head . group
