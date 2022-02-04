module Codewars.Kata.NumberMagic where

import Data.Char (digitToInt)
import Data.List (nub)

-- https://www.codewars.com/kata/56abc5e63c91630882000057/train/haskell

next :: Integer -> Maybe Integer
next n
  | null numbers = Nothing
  | otherwise =
    Just
      . head
      $ numbers
  where
    numbers =
      filter hasUniqueDigits
        . filter isMultipleOfThree
        . filter odd
        $ [(n + 1) .. 9999999]

hasUniqueDigits :: Integer -> Bool
hasUniqueDigits xs = (== size) . length . nub $ digits
  where
    digits = integerToDigits xs :: [Int]
    size = length digits :: Int

    integerToDigits :: Integer -> [Int]
    integerToDigits = map digitToInt . show

isMultipleOfThree :: Integer -> Bool
isMultipleOfThree x = x `mod` 3 == 0
