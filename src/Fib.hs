module Fib (fib) where

-- https://www.codewars.com/kata/522551eee9abb932420004a0/train/haskell

fib :: Int -> Integer
fib = memoized

memoized :: Int -> Integer
memoized i = (!! i) . map find $ [0 ..]
  where
    find 1 = 0
    find 2 = 1
    find x = memoized (x - 1) + memoized (x - 2)
