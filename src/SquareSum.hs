module SquareSum where

squareSum :: [Integer] -> Integer
squareSum [] = 0
squareSum n = sum (map square n)

square :: Integer -> Integer
square n = n * n
