module NumTheNums (sumOfSums) where

-- https://www.codewars.com/kata/60d2325592157c0019ee78ed/train/haskell

sumOfSums :: Integer -> Integer
sumOfSums n = n * (n ^ 5 + 6 * n ^ 4 + 13 * n ^ 3 + 18 * n ^ 2 + 22 * n + 12) `div` 72
