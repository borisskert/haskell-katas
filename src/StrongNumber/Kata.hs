module StrongNumber.Kata (strong) where

-- https://www.codewars.com/kata/5a4d303f880385399b000001/train/haskell

import Data.Char (digitToInt)


strong :: Integer -> String
strong x
  | x == sumFactorials = "STRONG!!!!"
  | otherwise = "Not Strong !!"
  where
    digits = toDigits x :: [Integer]
    factorials = map factorial digits :: [Integer]
    sumFactorials = sum factorials


toDigits :: Integer -> [Integer]
toDigits = map (toInteger . digitToInt) . show


factorial :: Integer -> Integer
factorial n = product [1..n]
