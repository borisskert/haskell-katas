module Codewars.Numbers where

-- https://www.codewars.com/kata/56b7251b81290caf76000978/train/haskell

import Data.Char (digitToInt)

getLastDigit :: Int -> Int
getLastDigit = last . toDigits . fib3

fib3 :: Int -> Integer
fib3 n = go n 0 1 0 1
  where
    go k a b p q
      | k == 0 = a
      | odd k = go (k - 1) (p * a + q * b) (q * a + (p + q) * b) p q
      | otherwise = go (k `div` 2) a b (p * p + q * q) ((2 * p + q) * q)

toDigits :: Integer -> [Int]
toDigits = map digitToInt . show
