module Fibonacci where

-- https://www.codewars.com/kata/57a1d5ef7cb1f3db590002af/train/haskell

fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib x = fib (x - 1) + fib (x - 2)
