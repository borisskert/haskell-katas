module JadenCasing where

--  https://www.codewars.com/kata/5390bac347d09b7da40006f6/train/haskell

import Data.Char (toUpper)


toJadenCase :: String -> String
toJadenCase = unwords . map capitalize . words


capitalize :: [Char] -> [Char]
capitalize word = toUpper (head word) : tail word
