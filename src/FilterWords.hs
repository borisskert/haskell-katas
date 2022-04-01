module FilterWords (filterWords) where

-- https://www.codewars.com/kata/587a75dbcaf9670c32000292/train/haskell

import Data.Char (toLower, toUpper)

filterWords :: String -> String
filterWords st = unwords . (: (map toLowerWord . tail $ stWords)) . capitalize . head $ stWords
  where
    stWords = words st :: [String]

    toLowerWord :: String -> String
    toLowerWord = map toLower

    capitalize :: String -> String
    capitalize word = (: (toLowerWord . tail $ word)) . toUpper . head $ word
