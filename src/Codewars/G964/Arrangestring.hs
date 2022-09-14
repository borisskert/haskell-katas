module Codewars.G964.Arrangestring where

--  https://www.codewars.com/kata/56cac350145912e68b0006f0/train/haskell

import Data.Char (toLower, toUpper)

arrange :: String -> String
arrange =
  unwords
    . alternatingMap (map toLower) (map toUpper)
    . alternatingSortBy (\a b -> compare (length a) (length b))
    . words

alternatingSortBy :: (a -> a -> Ordering) -> [a] -> [a]
alternatingSortBy comparing = sortDescending
  where
    sortDescending [] = []
    sortDescending [x] = [x]
    sortDescending (a : b : rest)
      | comparing a b == GT = b : sortAscending (a : rest)
      | otherwise = a : sortAscending (b : rest)

    sortAscending [] = []
    sortAscending [x] = [x]
    sortAscending (a : b : rest)
      | comparing a b == LT = b : sortDescending (a : rest)
      | otherwise = a : sortDescending (b : rest)

alternatingMap :: (a -> a) -> (a -> a) -> [a] -> [a]
alternatingMap functionA functionB = toA
  where
    toA [] = []
    toA (y : ys) = functionA y : toB ys

    toB [] = []
    toB (y : ys) = functionB y : toA ys
