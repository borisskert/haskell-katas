module Hamming2 where

-- https://www.codewars.com/kata/526d84b98f428f14a60008da/train/haskell

hamming :: Int -> Int
hamming n = (!! (n - 1)) . filter isHamming $ [1 ..]

isHamming :: Int -> Bool
isHamming 1 = True
isHamming 2 = True
isHamming 3 = True
isHamming 5 = True
isHamming n
  | even n = isHamming (n `div` 2)
  | n `mod` 3 == 0 = isHamming (n `div` 3)
  | n `mod` 5 == 0 = isHamming (n `div` 5)
  | otherwise = False
