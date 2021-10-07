module Codewars.Kata.CaseSwapping where

-- https://www.codewars.com/kata/5590961e6620c0825000008f/train/haskell

import Data.Char (isLower, isUpper, toUpper, toLower)


swap :: String -> String
swap = map swapChar
  where
    swapChar :: Char -> Char
    swapChar c
      | isLower c = toUpper c
      | isUpper c = toLower c
      | otherwise = c
