module ShortLongShort where

-- https://www.codewars.com/kata/50654ddff44f800200000007/train/haskell

shortLongShort :: String -> String -> String
shortLongShort a b
  | length a > length b = b ++ a ++ b
  | otherwise = a ++ b ++ a
