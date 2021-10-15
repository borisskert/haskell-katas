module Codwars.Kata.NameCapping where

-- https://www.codewars.com/kata/5356ad2cbb858025d800111d/train/haskell

import Data.Char (toUpper, toLower)

capMe :: [String] -> [String]
capMe = map capitalize
  where
    capitalize :: String -> String
    capitalize [] = []
    capitalize xs = first : rest
      where
        first = toUpper (head xs) :: Char
        rest = map toLower . tail $ xs :: String
