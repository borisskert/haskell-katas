module Codewars.G964.Powofdigits where

-- https://www.codewars.com/kata/560a4962c0cc5c2a16000068/train/haskell

import Data.Char (digitToInt)

eqSumPowDig :: Int -> Int -> [Int]
eqSumPowDig hmax pow = filter isDigitPow [2 .. hmax]
  where
    digitPow :: Int -> Int
    digitPow = sum . map (^ pow) . intToDigits

    isDigitPow :: Int -> Bool
    isDigitPow x = (== x) . digitPow $ x

intToDigits :: Int -> [Int]
intToDigits = map digitToInt . show
