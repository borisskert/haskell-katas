module LengthRecursively where

-- https://www.codewars.com/kata/57a83e447cb1f32de80000d5/train/haskell

lenR :: [a] -> Int
lenR [] = 0
lenR (_ : xs) = 1 + lenR xs
