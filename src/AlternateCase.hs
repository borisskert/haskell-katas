module AlternateCase where

-- https://www.codewars.com/kata/57a62154cf1fa5b25200031e/solutions/haskell

import Data.Char (toLower, isUpper, toUpper)


alternateCase :: String -> String
alternateCase = map switchChase


switchChase :: Char -> Char
switchChase c
  | isUpper c = toLower c
  | otherwise = toUpper c 
