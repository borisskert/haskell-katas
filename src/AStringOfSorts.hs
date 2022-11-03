module AStringOfSorts (sortString) where

--  https://www.codewars.com/kata/536c6b8749aa8b3c2600029a/train/haskell

import Data.List (elemIndex, intersect, sortBy)

sortString :: String -> String -> String
sortString string ordering = sorted ++ remaining
  where
    sorted = sortBy compare' (string `intersect` ordering)
    remaining = string `without` ordering

    compare' :: Char -> Char -> Ordering
    compare' a b = compare indexA indexB
      where
        indexA = a `elemIndex` ordering
        indexB = b `elemIndex` ordering

without :: String -> String -> String
without a b = filter (not . (`elem` b)) a
