module Codewars.HammingDistance where

-- https://www.codewars.com/kata/5624e574ec6034c3a20000e6/train/haskell

hammingDistance :: String -> String -> Int
hammingDistance [] [] = 0
hammingDistance (x:xs) (y:ys)
  | x /= y = 1 + hammingDistance xs ys
  | otherwise = hammingDistance xs ys
