module Codewars.Kata.Choose1 where

-- https://www.codewars.com/kata/559b8e46fa060b2c6a0000bf/train/haskell

diagonal :: Integer -> Integer -> Integer
diagonal 0 0 = 1
diagonal n k = choose n k + choose n (k + 1)

choose :: Integer -> Integer -> Integer
choose n k = factorial n `div` (factorial k * factorial (n - k))

factorial :: Integer -> Integer
factorial x = product [1 .. x]
