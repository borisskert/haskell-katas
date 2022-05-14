module Codewars.BackspacesInString (cleanString) where

--  https://www.codewars.com/kata/5727bb0fe81185ae62000ae3/train/haskell

cleanString :: String -> String
cleanString = clean []

clean :: [Char] -> [Char] -> [Char]
clean read [] = read
clean [] (c : cs)
  | c == '#' = clean [] cs
  | otherwise = clean [c] cs
clean read (c : cs)
  | c == '#' = clean (init read) cs
  | otherwise = clean (read ++ [c]) cs
