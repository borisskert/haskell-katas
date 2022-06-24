module StringTransformer (stringTransformer) where

-- https://www.codewars.com/kata/5878520d52628a092f0002d0/train/haskell

import Data.Char (isLower, isUpper, toLower, toUpper)
import Data.List (groupBy)

stringTransformer :: String -> String
stringTransformer = concat . reverse . map (map switch) . groupBy spaceOrNot

spaceOrNot :: Char -> Char -> Bool
spaceOrNot a b = a == ' ' && b == ' ' || a /= ' ' && b /= ' '

switch :: Char -> Char
switch c
  | isLower c = toUpper c
  | isUpper c = toLower c
  | otherwise = c
