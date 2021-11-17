module CamelCase where

-- https://www.codewars.com/kata/517abf86da9663f1d2000003/train/haskell

import Data.Char (isLetter, toUpper)
import Data.List.Split (splitWhen)

toCamelCase :: String -> String
toCamelCase word = first ++ (concatMap capitalize . tail $ words)
  where
    capitalize [] = []
    capitalize x = (: tail x) . toUpper . head $ x

    words = splitWhen (not . isLetter) word
    first = head words
