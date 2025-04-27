module UnscrambledEggs (unscrambleEggs) where

-- https://www.codewars.com/kata/55ea5650fe9247a2ea0000a7/train/haskell

unscrambleEggs :: String -> String
unscrambleEggs [] = []
unscrambleEggs (a : b : c : xs)
  | a == 'e' && b == 'g' && c == 'g' = unscrambleEggs xs
  | otherwise = a : unscrambleEggs (b : c : xs)
unscrambleEggs (x : xs) = x : unscrambleEggs xs
