module Codewars.Parentheses where

-- https://www.codewars.com/kata/52774a314c2333f0a7000688/train/haskell

validParentheses :: String -> Bool
validParentheses = check 0
  where
    check :: Int -> [Char] -> Bool
    check 0 [] = True
    check _ [] = False
    check count (c : cs)
      | c == '(' = check (count + 1) cs
      | count == 0 = False
      | otherwise = check (count - 1) cs
