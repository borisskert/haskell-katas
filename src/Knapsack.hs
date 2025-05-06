module Knapsack (knapsackLight) where

-- https://www.codewars.com/kata/58842a2b4e8efb92b7000080/train/haskell

knapsackLight :: Int -> Int -> Int -> Int -> Int -> Int
knapsackLight value1 weight1 value2 weight2 maxW
  | weight1 > maxW && weight2 > maxW = 0
  | weight1 > maxW = value2
  | weight2 > maxW = value1
  | weight1 + weight2 > maxW = max value1 value2
  | otherwise = value1 + value2
