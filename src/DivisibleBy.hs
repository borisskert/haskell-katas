module DivisibleBy (divisibleBy) where

-- https://www.codewars.com/kata/55edaba99da3a9c84000003b/train/haskell
  
divisibleBy :: [Int] -> Int -> [Int]
divisibleBy numbers divisor = filter (isDivisible divisor) numbers


isDivisible :: Int -> Int -> Bool
isDivisible divisor number = number `mod` divisor == 0
