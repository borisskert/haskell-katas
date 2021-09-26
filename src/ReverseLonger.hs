module ReverseLonger where

-- https://www.codewars.com/kata/54557d61126a00423b000a45/train/haskell

reverseLonger :: String -> String -> String
reverseLonger a b
  | length a < length b = a ++ reverse b ++ a
  | otherwise = b ++ reverse a ++ b
