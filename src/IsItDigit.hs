module IsItDigit where

-- https://www.codewars.com/kata/57a06c1b7cb1f3e15b00082b/train/haskell

isItDigit :: Char -> Bool
isItDigit c = c >= '0' && c <= '9'
