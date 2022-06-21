module WhereIsMyParent (findChildren) where

-- https://www.codewars.com/kata/58539230879867a8cd00011c/train/haskell

import Data.Char (toLower)
import Data.List (sortBy)

findChildren :: String -> String
findChildren = sortBy parentChildren

parentChildren :: Char -> Char -> Ordering
parentChildren a b
  | lowerA == lowerB = compare a b
  | otherwise = compare lowerA lowerB
  where
    lowerA = toLower a
    lowerB = toLower b
