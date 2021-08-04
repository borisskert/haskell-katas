module FizzBuzz(fizzbuzz) where

-- https://www.codewars.com/kata/5300901726d12b80e8000498/train/haskell

fizzbuzz :: Int -> [String]
fizzbuzz n = map toFizzBuzz [1 .. n]
  where
    toFizzBuzz :: Int -> String
    toFizzBuzz x
      | isDivideable3 && isDivideable5 = "FizzBuzz"
      | isDivideable3 = "Fizz"
      | isDivideable5 = "Buzz"
      | otherwise = show x
      where
        isDivideable3 = x `mod` 3 == 0 :: Bool
        isDivideable5 = x `mod` 5 == 0 :: Bool
