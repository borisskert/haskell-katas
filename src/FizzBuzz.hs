module FizzBuzz where

-- https://www.codewars.com/kata/51dda84f91f5b5608b0004cc/train/haskell

fizzbuzz :: Int -> [Int]
fizzbuzz n = [length fizz, length buzz, length fizzbuzz']
  where
    fizz = filter (not . isBuzz) . filter isFizz $ ints
    buzz = filter (not . isFizz) . filter isBuzz $ ints
    fizzbuzz' = filter isFizz . filter isBuzz $ ints

    ints = [1 .. (n - 1)]

    isFizz x = x `mod` 3 == 0
    isBuzz x = x `mod` 5 == 0
