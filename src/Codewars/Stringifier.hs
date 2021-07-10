module Codewars.Stringifier where

-- https://www.codewars.com/kata/563b74ddd19a3ad462000054/train/haskell

stringy :: Int -> String
stringy 0 = "0"
stringy 1 = "1"
stringy n = stringy (n - 1) ++ stringy (n `mod` 2)
