module Codewars.Kata.Distance where

-- https://www.codewars.com/kata/568ff914fc7a40a18500005c/train/haskell

distancesFromAverage :: [Double] -> [Double]
distancesFromAverage xs = map (average -) xs
  where
    count = fromIntegral . length $ xs
    average = (/ count) . sum $ xs
