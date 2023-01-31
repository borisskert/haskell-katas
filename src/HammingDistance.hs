module HammingDistance (hammingDistance) where

-- https://www.codewars.com/kata/58a6af7e8c08b1e9c40001c1/train/haskell

hammingDistance :: Int -> Int -> Int
hammingDistance a b
  | a == b = 0
  | even a /= even b = 1 + next
  | otherwise = next
  where
    next = hammingDistance (a `div` 2) (b `div` 2)
