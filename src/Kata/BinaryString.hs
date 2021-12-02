module Kata.BinaryString (binStr) where

-- https://www.codewars.com/kata/58c218efd8d3cad11c0000ef/train/haskell

binStr :: String -> Int
binStr [] = 0
binStr (c : cs)
  | c == '1' = (+ 1) . binStr . flip $ cs
  | otherwise = binStr cs
  where
    flip = map (\c -> if c == '1' then '0' else '1') :: String -> String
