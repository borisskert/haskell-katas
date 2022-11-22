module EvenFibonacciSum (fibSum) where

-- https://www.codewars.com/kata/55688b4e725f41d1e9000065/train/haskell

fibSum :: Int -> Int
fibSum n = sum . filter even . takeWhile (< n) . map fib $ [1 ..]

fib :: Int -> Int
fib i = (!! i) . map find $ [0 ..]
  where
    find 1 = 0
    find 2 = 1
    find x = fib (x - 1) + fib (x - 2)
