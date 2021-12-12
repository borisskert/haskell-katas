module Codewars.Exercise.Dropcaps where

-- https://www.codewars.com/kata/559e5b717dd758a3eb00005a/train/haskell

import Data.Char (toUpper, toLower)
import Data.List (groupBy)

dropCap :: String -> String
dropCap = concatMap capitalize . groupBy (\a b -> a /= ' ' && b /= ' ')
  where
    capitalize :: String -> String
    capitalize (c : cs)
      | (> 1) . length $ cs = toUpper c : map toLower cs
      | otherwise = c : cs
