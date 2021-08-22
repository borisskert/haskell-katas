module Codewars.Squares where

-- https://www.codewars.com/kata/558f9f51e85b46e9fa000025/train/haskell

--best practice:
-- differenceOfSquares :: Integer -> Integer
-- differenceOfSquares n = (3*n+2) * (n-1) * n * (n+1) `div` 12

differenceOfSquares :: Integer -> Integer
differenceOfSquares n = squareOfSums - sumOfSquares
  where
    sumOfSquares = sum . map (^2) $ [1..n] :: Integer
    squareOfSums = (^2) . sum $ [1..n] :: Integer
