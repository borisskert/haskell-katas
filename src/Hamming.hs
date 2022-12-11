module Hamming (hamming) where

--  https://www.codewars.com/kata/5410c0e6a0e736cf5b000e69/train/haskell

hamming :: String -> String -> Int
hamming [] [] = 0
hamming [] b = length b
hamming a [] = length a
hamming (a : ax) (b : bx)
  | a == b = hamming ax bx
  | otherwise = 1 + hamming ax bx
