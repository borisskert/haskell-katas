module FixString where

--https://www.codewars.com/kata/5b180e9fedaa564a7000009a/train/haskell

import Data.Char (toLower, toUpper, isLower, isUpper)

solve :: String -> String
solve text
  | countUpper > countLower = map toUpper text
  | otherwise = map toLower text
  where
    countUpper = length $ filter isUpper text :: Int
    countLower = length $ filter isLower text :: Int
