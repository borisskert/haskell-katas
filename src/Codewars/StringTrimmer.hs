module Codewars.StringTrimmer where

-- https://www.codewars.com/kata/563fb342f47611dae800003c/train/haskell

trim :: String -> Int -> String
trim str n
  | length str <= n = str
  | n <= 3 && length str <= 3 = (++ "...") . take n $ str
  | n <= 3 = "..."
  | otherwise = (++ "...") . take (n - 3) $ str
