module Codewars.Kata.Phone where

-- https://www.codewars.com/kata/525f47c79f2f25a4db000025/train/haskell

import Data.Char (isDigit)

validPhoneNumber :: String -> Bool
validPhoneNumber ('(' : d1 : d2 : d3 : ')' : ' ' : d4 : d5 : d6 : '-' : d7 : d8 : d9 : d10 : others)
  | not . isDigit $ d1 = False
  | not . isDigit $ d2 = False
  | not . isDigit $ d3 = False
  | not . isDigit $ d4 = False
  | not . isDigit $ d5 = False
  | not . isDigit $ d6 = False
  | not . isDigit $ d7 = False
  | not . isDigit $ d8 = False
  | not . isDigit $ d9 = False
  | not . isDigit $ d10 = False
  | not . null $ others = False
  | otherwise = True
validPhoneNumber _ = False
