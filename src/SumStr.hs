module SumStr (sumStr) where

-- https://www.codewars.com/kata/5966e33c4e686b508700002d/train/haskell
  
sumStr :: String -> String -> String
sumStr a b = show (toNumber a + toNumber b)


toNumber :: String -> Int
toNumber "" = 0
toNumber n = read n