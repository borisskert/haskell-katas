module Codewars.Kata.LastFib where

-- https://www.codewars.com/kata/56b7771481290cc283000f28/train/haskell

lastFibDigit :: Integer -> Int
lastFibDigit = (`mod` 10) . fib . fromInteger . (`mod` 60)

fib :: Int -> Int
fib i = (!! i) . map find $ [0 ..]
  where
    find 0 = 0
    find 1 = 1
    find x = fib (x - 1) + fib (x - 2)
