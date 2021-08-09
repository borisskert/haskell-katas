module HalvingSum (halvingSum) where

-- https://www.codewars.com/kata/5a58d46cfd56cb4e8600009d/train/haskell

-- best practice:
-- halvingSum :: Int -> Int
-- halvingSum 1 = 1
-- halvingSum  n = n + halvingSum (div n 2)

halvingSum :: Int -> Int
halvingSum 1 = 1
halvingSum n = sum (map (\x -> n `div` x) (dividers 1)) - 1
  where
    dividers :: Int -> [Int]
    dividers x
      | x >= n = [n]
      | otherwise = x : dividers (x * 2)
