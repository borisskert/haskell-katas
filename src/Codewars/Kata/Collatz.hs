module Codewars.Kata.Collatz where

--  https://www.codewars.com/kata/54fb963d3fe32351f2000102/train/haskell

collatz :: Integer -> Int
collatz 1 = 1
collatz n
  | even n = 1 + collatz (n `div` 2)
  | otherwise = 1 + collatz (n * 3 + 1)
