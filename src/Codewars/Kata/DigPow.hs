module Codewars.Kata.DigPow where

-- https://www.codewars.com/kata/5552101f47fc5178b1000050/train/haskell

digpow :: Integer -> Integer -> Integer
digpow n p
  | remainder == 0 = k
  | otherwise = -1
  where
    digits = toDigits n :: [Integer]
    (k, remainder) = (`divMod` n) . sum . zipWith (^) digits $ [p ..]

toDigits :: Integral a => a -> [a]
toDigits n
  | n < 10 = [n]
  | otherwise = toDigits m ++ [remainder]
  where
    (m, remainder) = n `divMod` 10
