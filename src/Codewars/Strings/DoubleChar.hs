module Codewars.Strings.DoubleChar where

-- https://www.codewars.com/kata/56b1f01c247c01db92000076/train/haskell

doubleChar :: [Char] -> [Char]
doubleChar = flatmap double


double :: Char -> [Char]
double char = [char] ++ [char]


--https://stackoverflow.com/a/2986815/13213024
flatmap _ [] = []  
flatmap f (x:xs) = f x ++ flatmap f xs
