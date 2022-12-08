module QuickCombin where

--  https://www.codewars.com/kata/55b22ef242ad87345c0000b2/train/haskell

choose' :: Integer -> Integer -> Integer
choose' n k = factorial n `div` (factorial k * factorial (n - k ))

factorial :: Integer -> Integer
factorial x = product [2..x]
