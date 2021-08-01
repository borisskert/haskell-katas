module Balanced where

-- https://www.codewars.com/kata/5a4e3782880385ba68000018/train/haskell

import Data.Char (digitToInt)


balancedNum :: Int -> String
balancedNum x
  | balancedDigits == 0 = "Balanced"
  | otherwise = "Not Balanced"
  where
    digits = toDigits x :: [Int]

    balanced :: [Int] -> Int
    balanced [i] = 0
    balanced [i1, i2] = 0
    balanced xs = head xs - last xs + balanced (init $ tail xs)

    balancedDigits = balanced digits


toDigits :: Int -> [Int]
toDigits = map digitToInt . show
