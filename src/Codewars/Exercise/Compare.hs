module Codewars.Exercise.Compare (compareVersions) where

--  https://www.codewars.com/kata/53b138b3b987275b46000115/train/haskell

import Data.List.Split (splitOn)

compareVersions :: String -> String -> Ordering
compareVersions a b = compareV vA vB
  where
    vA = version a
    vB = version b

type Version = [Int]

compareV :: Version -> Version -> Ordering
compareV (a : ax) (b : bx)
  | a == b = compare ax bx
  | otherwise = compare a b

version :: String -> Version
version = map read . splitOn "."
