module MaxMult where

--  https://www.codewars.com/kata/5aba780a6a176b029800041c/train/haskell

maxMultiple :: Int -> Int -> Int
maxMultiple n m = maximum [n, n + n .. m]
