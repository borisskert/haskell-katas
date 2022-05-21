module Validate (validate) where

--  https://www.codewars.com/kata/5418a1dd6d8216e18a0012b2/train/haskell

import Data.Char (digitToInt)

validate :: Integer -> Bool
validate = (== 0) . (`mod` 10) . takeRight . toDigits

toDigits :: Integer -> [Integer]
toDigits = map (toInteger . digitToInt) . show

luhnRight :: [Integer] -> Integer
luhnRight [] = 0
luhnRight xs = (luhnDigit . last $ xs) + (takeRight . init $ xs)

luhnDigit :: Integer -> Integer
luhnDigit x
  | x > 4 = 2 * x - 9
  | otherwise = x * 2

takeRight :: [Integer] -> Integer
takeRight [] = 0
takeRight xs = last xs + (luhnRight . init $ xs)
