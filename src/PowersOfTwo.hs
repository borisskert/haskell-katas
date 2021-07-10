module PowersOfTwo where

-- https://www.codewars.com/kata/57a083a57cb1f31db7000028/train/haskell

powersOfTwo :: Int -> [Int]
powersOfTwo 0 = [1]
powersOfTwo n = powersOfTwo (n - 1) ++ [2 ^ n]
