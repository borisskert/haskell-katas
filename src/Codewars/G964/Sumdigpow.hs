module Codewars.G964.Sumdigpow where

-- https://www.codewars.com/kata/5626b561280a42ecc50000d1/train/haskell

sumDigPow :: Int -> Int -> [Int]
sumDigPow a b = takeWhile (< b) . dropWhile (< a) $ numbers
  where
    numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 89, 135, 175, 518, 598, 1306, 1676, 2427, 2646798]
