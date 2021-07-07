module Codewars.AverageCalculator where

-- https://www.codewars.com/kata/563e320cee5dddcf77000158/train/haskell

getAverage :: [Int] -> Int
getAverage numbers = sum numbers `div` length numbers
