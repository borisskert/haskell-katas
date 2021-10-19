module DistinctDigitYear where

-- https://www.codewars.com/kata/58aa68605aab54a26c0001a6/train/haskell

import Data.Char (digitToInt)
import Data.List (nub)

distinctDigitYear :: Int -> Int
distinctDigitYear n
  | isDistinct (n + 1) = n + 1
  | otherwise = distinctDigitYear (n + 1)
  where
    isDistinct :: Int -> Bool
    isDistinct n = (== digits) . nub $ digits
      where
        digits = toDigits n :: [Int]


        toDigits :: Int -> [Int]
        toDigits = map digitToInt . show
