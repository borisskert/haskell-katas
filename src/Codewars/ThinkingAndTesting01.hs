module Codewars.ThinkingAndTesting01 where

-- https://www.codewars.com/kata/56d904db9963e9cf5000037d/train/haskell

--best practice:
-- import Data.Bits ((.|.))

-- testit :: Int -> Int -> Int
-- testit = (.|.)


testit :: Int -> Int -> Int
testit a b = binToDec $ or' (decToBin a) (decToBin b)


or' :: [Bool] -> [Bool] -> [Bool]
or' [] b = b
or' a [] = a
or' a b = or' (init a) (init b) ++ [last a || last b]


decToBin :: Int -> [Bool]
decToBin n
  | div2 > 0 = decToBin div2 ++ [rest]
  | otherwise = [rest]
  where
    div2 = n `div` 2
    rest = n `mod` 2 == 1


binToDec :: [Bool] -> Int
binToDec [] = 0
binToDec b = binToDec (init b) * 2 + value
  where
    value = if last b then 1 else 0
