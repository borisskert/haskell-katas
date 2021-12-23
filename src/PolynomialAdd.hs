module PolynomialAdd where

-- https://www.codewars.com/kata/570ac43a1618ef634000087f/train/haskell

polyAdd :: [Int] -> [Int] -> [Int]
polyAdd xs [] = xs
polyAdd [] ys = ys
polyAdd (x : xs) (y : ys) = (x + y) : polyAdd xs ys
