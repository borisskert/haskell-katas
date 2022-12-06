module AssembleString (assembleString) where

--  https://www.codewars.com/kata/6210fb7aabf047000f3a3ad6/train/haskell

assembleString :: [[Char]] -> [Char]
assembleString [] = []
assembleString xs = foldl assemble (head xs) xs

assemble :: [Char] -> [Char] -> [Char]
assemble [] _ = []
assemble _ [] = []
assemble (x : xs) (y : ys)
  | y == '*' && x == '*' = '#' : assemble xs ys
  | y == '*' = x : assemble xs ys
  | otherwise = y : assemble xs ys
