module BugsLife.Kata (shortestDistance) where

-- https://www.codewars.com/kata/5b71af678adeae41df00008c/train/haskell

shortestDistance :: Double -> Double -> Double -> Double
shortestDistance a b c
  | a > b && a > c = shortestDistance b c a
  | b > a && b > c = shortestDistance a c b
  | otherwise = sqrt ((a + b) ^ 2 + c * c)
