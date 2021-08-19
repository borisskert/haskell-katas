module SequenceSum where

-- https://www.codewars.com/kata/5436f26c4e3d6c40e5000282/train/haskell

sumOfN :: Int -> [Int]
sumOfN n
  | n >= 0 = take (n + 1) $ map gauss [0..n]
  | otherwise = reverse $ take (abs n + 1) $ map gauss [n..0]


gauss :: Int -> Int
gauss n
  | n >= 0 = n * (n + 1) `div` 2
  | otherwise = gauss (abs n) * (-1)
