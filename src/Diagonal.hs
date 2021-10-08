module Diagonal where

-- https://www.codewars.com/kata/5497a3c181dd7291ce000700/train/haskell

diagonalSum :: [[Int]] -> Int
diagonalSum [] = 0
diagonalSum (x:xs) = head x + diagonalSum (map tail xs)
