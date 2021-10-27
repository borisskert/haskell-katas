module Kata (generatePairs) where

-- https://www.codewars.com/kata/588e27b7d1140d31cb000060/train/haskell

generatePairs :: Int -> [[Int]]
generatePairs n = concatMap (\x -> map (\y -> [x, y]) [x..n]) [0 .. n]


-- best practice:
-- generatePairs :: Int -> [[Int]]
-- generatePairs n = [[x, y] | x <- [0..n], y <- [x..n]]
