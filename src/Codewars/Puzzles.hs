module Codewars.Puzzles(testit) where

-- https://www.codewars.com/kata/56d93f249c844788bc000002/train/haskell

import Data.Char (toUpper)

testit :: String -> String
testit = unwords . map capitalize . words
  where
    capitalize xs = toUpper (head xs) : tail xs
