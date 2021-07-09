module Expression where

-- https://www.codewars.com/kata/5ae62fcf252e66d44d00008e/train/haskell

expression :: Int -> Int -> Int -> Int
expression a b c = maximum (combinations a b c)


combinations :: Int -> Int -> Int -> [Int]
combinations a b c = [a + b + c]
 ++ [a * b * c]
 ++ [a + b * c]
 ++ [a * b + c]
 ++ [a * (b + c)]
 ++ [(a + b) * c]
