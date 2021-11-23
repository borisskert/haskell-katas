module Codewars.G964.Title2Nb where

-- https://www.codewars.com/kata/55ee3ebff71e82a30000006a/train/haskell

import Data.List (elemIndex)
import Data.Maybe (fromMaybe)

titleToNb :: String -> Integer
titleToNb = charsToNumber

charsToNumber :: [Char] -> Integer
charsToNumber [] = 0
charsToNumber b = charsToNumber (init b) * 26 + value
  where
    value = (+ 1) . toInteger . charToNumber . last $ b

charToNumber :: Char -> Int
charToNumber char = fromMaybe 0 . elemIndex char $ ['A' .. 'Z']
