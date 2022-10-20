module LastSurvivors (lastSurvivors) where

-- https://www.codewars.com/kata/60a1aac7d5a5fc0046c89651/train/haskell

import Data.Char (chr, ord)
import Data.List (sort)

lastSurvivors :: String -> String
lastSurvivors cs
  | converted == cs = cs
  | otherwise = lastSurvivors converted
  where
    converted = convert . sort $ cs

convert :: String -> String
convert [] = []
convert [c] = [c]
convert (a : b : cs)
  | a == b = next a : convert cs
  | otherwise = a : convert (b : cs)

next :: Char -> Char
next 'z' = 'a'
next c = chr . (+ 1) . ord $ c
