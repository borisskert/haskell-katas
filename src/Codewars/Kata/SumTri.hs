module Codewars.Kata.SumTri where

-- https://www.codewars.com/kata/580878d5d27b84b64c000b51/train/haskell

sunTriNumbers :: Integer -> Integer
sunTriNumbers 1 = 1
sunTriNumbers 2 = 4
sunTriNumbers n
  | n < 1 = 0
  | otherwise = n ^ 2 + sunTriNumbers (n - 2)
