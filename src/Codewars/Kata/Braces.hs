module Codewars.Kata.Braces where

-- https://www.codewars.com/kata/5277c8a221e209d3f6000b56/train/haskell

validBraces :: String -> Bool
validBraces = counting (0, 0, 0)
  where
    counting :: (Int, Int, Int) -> String -> Bool
    counting (0, 0, 0) [] = True
    counting _ [] = False
    counting (p, b, c) (x : xs)
      | p < 0 = False
      | b < 0 = False
      | c < 0 = False
      | x == '(' = counting (p + 1, b, c) xs
      | x == ')' = counting (p - 1, b, c) xs
      | x == '[' = counting (p, b + 1, c) xs
      | x == ']' = counting (p, b - 1, c) xs
      | x == '{' = counting (p, b, c + 1) xs
      | x == '}' = counting (p, b, c - 1) xs
      | otherwise = counting (p, b, c) xs
