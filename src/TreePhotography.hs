module TreePhotography (treePhotography) where

-- https://www.codewars.com/kata/64fd5072fa88ae669bf15342/train/haskell

import Data.List.Split (divvy)

treePhotography :: [Word] -> String
treePhotography xs
  | fromTheLeft > fromTheRight = "left"
  | otherwise = "right"
  where
    fromTheLeft = countTrees xs
    fromTheRight = countTrees . reverse $ xs

countTrees :: [Word] -> Int
countTrees [] = 0
countTrees [_] = 1
countTrees (x : y : xs)
  | x < y = countTrees (y : xs) + 1
  | otherwise = countTrees (x : xs)
