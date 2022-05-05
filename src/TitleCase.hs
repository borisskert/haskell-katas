module TitleCase (titleCase) where

-- https://www.codewars.com/kata/5202ef17a402dd033c000009/train/haskell

import Data.Char (toLower, toUpper)

titleCase :: String -> String -> String
titleCase _ [] = []
titleCase minor title = unwords . (start :) . map toTitleCase . tail $ titleWords
  where
    minors = words . map toLower $ minor :: [String]
    titleWords = words title :: [String]
    start = capitalize . head $ titleWords :: String

    toTitleCase :: String -> String
    toTitleCase cs
      | lower `elem` minors = lower
      | otherwise = capitalize cs
      where
        lower = map toLower cs

    capitalize :: String -> String
    capitalize [] = []
    capitalize (c : cs) = toUpper c : map toLower cs
