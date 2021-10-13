module Codewars.Puzzles where

-- https://www.codewars.com/kata/56d931ecc443d475d5000003/train/haskell

testit :: Int -> Int
testit = length . filter (== True) . decToBin


decToBin :: Int -> [Bool]
decToBin n
  | div2 > 0 = decToBin div2 ++ [rest]
  | otherwise = [rest]
  where
    div2 = n `div` 2
    rest = n `mod` 2 == 1
