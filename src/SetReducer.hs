module SetReducer (setReducer) where

-- https://www.codewars.com/kata/63cbe409959401003e09978b/train/haskell

import Data.List (group)

setReducer :: [Int] -> Int
setReducer xs
  | length reduced == 1 = head reduced
  | otherwise = setReducer reduced
  where
    reduced = reduce xs

reduce :: [Int] -> [Int]
reduce = map length . group
