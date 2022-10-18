module Codewars.G964.CheckChoose (checkchoose) where

-- https://www.codewars.com/kata/55be10de92aad5ef28000023/train/haskell

checkchoose :: Integer -> Integer -> Integer
checkchoose m n
  | m == n = 1
  | null candidates = -1
  | otherwise = head candidates
  where
    candidates = map fst . filter ((== m) . snd) . map (\x -> (x, n `choose` x)) $ [2 .. n - 1]

choose :: Integer -> Integer -> Integer
choose n x = factorial n `div` (factorial x * factorial (n - x))

factorial :: Integer -> Integer
factorial x = product [1 .. x]
