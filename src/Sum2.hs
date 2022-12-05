module Sum2 where

-- https://www.codewars.com/kata/584a6d9d7d22f8fa09000094/train/haskell

f :: Int -> [Integer]
f n = go [0 .. n + 1]
  where
    go :: [Int] -> [Integer]
    go [x] = [(2 ^ x) - 1]
    go (x : xs) = (2 ^ x) : go xs
