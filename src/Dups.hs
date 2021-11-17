module Dups where

-- https://www.codewars.com/kata/54b42f9314d9229fd6000d9c/train/haskell

import Data.Char (toLower)

duplicateEncode :: String -> String
duplicateEncode text = map toBrace lowerCase
  where
    lowerCase = map toLower text

    toBrace :: Char -> Char
    toBrace char
      | count char == 1 = '('
      | otherwise = ')'
      where
        count :: Char -> Int
        count c = length . filter (== c) $ lowerCase
