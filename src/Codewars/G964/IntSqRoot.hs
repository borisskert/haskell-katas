module Codewars.G964.IntSqRoot where

-- https://www.codewars.com/kata/55efecb8680f47654c000095/train/haskell

intRac :: Integer -> Integer -> Integer
intRac s x = toInteger . length . heron s $ [x]

heron :: Integer -> [Integer] -> [Integer]
heron s xs
  | nextX == x = xs
  | otherwise = heron s (xs ++ [nextX])
  where
    x = last xs
    nextX = (x + (s `div` x)) `div` 2
