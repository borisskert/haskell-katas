module Codewars.Kata.Spinning where

-- https://www.codewars.com/kata/5264d2b162488dc400000001/train/haskell

spinWords :: String -> String
spinWords = unwords . map spinWord . words

spinWord :: String -> String
spinWord word
  | length word >= 5 = reverse word
  | otherwise = word
