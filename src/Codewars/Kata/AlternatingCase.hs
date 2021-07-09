module Codewars.Kata.AlternatingCase where

-- https://www.codewars.com/kata/56efc695740d30f963000557/train/haskell

import Data.Char (toLower, toUpper, isLower, isUpper)


toAlternatingCase :: String -> String
toAlternatingCase = map toggleCase


toggleCase :: Char -> Char
toggleCase char
  | isUpper char = toLower char
  | isLower char = toUpper char
  | otherwise = char
