module Codewars.G964.Validateword where

-- https://www.codewars.com/kata/56786a687e9a88d1cf00005d/train/haskell

import Data.List (nub, sort)
import Data.Char (toLower)


validateWord :: String -> Bool
validateWord word = head counts == last counts
  where
    uniques = nub . map toLower $ word :: [Char]
    countLetter c = length . filter (== c) . map toLower $ word :: Int
    counts = sort . map countLetter $ uniques :: [Int]
