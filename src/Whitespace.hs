module Whitespace (whitespaceNumber) where

-- https://www.codewars.com/kata/55b350026cc02ac1a7000032/train/haskell

import Text.Printf (printf)

whitespaceNumber :: Integer -> String
whitespaceNumber 0 = " \n"
whitespaceNumber n
  | n < 0 = printf "\t%s\n" formatted
  | otherwise = printf " %s\n" formatted
  where
    formatted = map toWhitespace . intToBin . abs $ n :: String

toWhitespace :: Bool -> Char
toWhitespace False = ' '
toWhitespace True = '\t'

intToBin :: Integer -> [Bool]
intToBin n
  | n > 1 = intToBin div2 ++ [bit]
  | otherwise = [bit]
  where
    bit = rest > 0
    (div2, rest) = n `divMod` 2
