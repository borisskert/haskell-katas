module Haskell.Codewars.Pattern1 where

-- https://www.codewars.com/kata/55733d3ef7c43f8b0700007c/train/haskell

pattern :: Int -> String
pattern 1 = "1"
pattern n
  | n > 1 = patternOf [n, (n-1) .. 1]
  | otherwise = ""
  where
    patternOf :: [Int] -> String 
    patternOf [c] = show c
    patternOf text = concatMap show text ++ "\n" ++ patternOf (init text)
