module HighestValue where

-- https://www.codewars.com/kata/5840586b5225616069000001/train/haskell

import Data.Char (ord)

highestValue :: String -> String -> String
highestValue a b
  | valueOf a >= valueOf b = a
  | otherwise = b

valueOf :: String -> Int
valueOf = sum . map ord
