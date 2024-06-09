module Kata (nextHigher) where

-- https://www.codewars.com/kata/56bdd0aec5dc03d7780010a5/train/haskell

nextHigher :: Int -> Int
nextHigher n = search (n + 1)
  where
    bitCountN = bitCount n

    search :: Int -> Int
    search i
      | bitCount i == bitCountN = i
      | otherwise = search (i + 1)

bitCount :: Int -> Int
bitCount 0 = 0
bitCount n
  | rest == 0 = bitCount div2
  | otherwise = 1 + bitCount div2
  where
    (div2, rest) = n `divMod` 2

-- #againwhatlearned
-- use `popCount` from `Data.Bits` to count the number of bits set to 1 in a number
