module IsItWhitespace where

-- https://www.codewars.com/kata/57a06e21e298a7b5ae000229/train/haskell

isItWhitespace :: Char -> Bool
isItWhitespace ' ' = True
isItWhitespace '\t' = True
isItWhitespace _ = False
