module SumFactorial (sumFactorial) where

-- https://www.codewars.com/kata/56b0f6243196b9d42d000034/train/haskell

sumFactorial :: [Integer] -> Integer
sumFactorial = sum . map factorial
  where
    factorial :: Integer -> Integer
    factorial = product . (\x -> [2..x])
