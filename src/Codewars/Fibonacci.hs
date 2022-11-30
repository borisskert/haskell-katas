module Codewars.Fibonacci (sumFibs) where

-- https://www.codewars.com/kata/56662e268c0797cece0000bb/train/haskell

sumFibs :: Int -> Integer
sumFibs n = sum . filter even . take n . map fib $ [1 ..]

fib :: Int -> Integer
fib i = (!! i) . map find $ [0 ..]
  where
    find 0 = 0
    find 1 = 1
    find x = fib (x - 1) + fib (x - 2)
