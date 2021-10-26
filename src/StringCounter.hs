module StringCounter (stringCounter) where

-- https://www.codewars.com/kata/584466950d3bedb9b300001f/train/haskell

stringCounter :: String -> Char -> Int
stringCounter inputS charS = length . filter (== charS) $ inputS
