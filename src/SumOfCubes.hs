module SumOfCubes where

--  https://www.codewars.com/kata/59a8570b570190d313000037/train/haskell

sumCubes :: Integer -> Integer
sumCubes n = sum $ map (^3) $ [1..n]
