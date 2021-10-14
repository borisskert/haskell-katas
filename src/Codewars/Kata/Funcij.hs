module Codewars.Kata.Funcij where

-- https://www.codewars.com/kata/559e3224324a2b6e66000046/train/haskell

sumin :: Integer -> Integer
sumin n = sum . map (^ 2) $ [1..n]

sumax :: Integer -> Integer
sumax n = n ^ 3 - sumin (n - 1)

sumsum :: Integer -> Integer
sumsum n = sumax n + sumin n
