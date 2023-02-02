module Trim (trim) where

-- https://www.codewars.com/kata/526e8de0512511429e000006/train/haskell

trim :: String -> String
trim = trimRight . trimLeft

trimLeft :: String -> String
trimLeft = dropWhile isWhitespace

trimRight :: String -> String
trimRight = reverse . trimLeft . reverse

whitespaces :: [Char]
whitespaces = " \t\n\r\f\v"

isWhitespace :: Char -> Bool
isWhitespace = (`elem` whitespaces)

-- #againwhatlearned
-- use `isSpace` function from `Data.Char` module
-- and `dropWhileEnd` function from `Data.List` module:
-- ```
-- import Data.List (dropWhile, dropWhileEnd)
-- import Data.Char (isSpace)
-- trim = dropWhile isSpace . dropWhileEnd isSpace
-- ```
