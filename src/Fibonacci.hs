module Fibonacci where

--  https://www.codewars.com/kata/52549d3e19453df56f0000fe/train/haskell

fib :: Int -> Integer
fib i = (!! i) . map find $ [0 ..]
  where
    find 1 = 0
    find 2 = 1
    find x = fib (x - 1) + fib (x - 2)
