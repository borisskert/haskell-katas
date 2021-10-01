module Haskell.Codewars.NarcissisticNumbers where

-- https://www.codewars.com/kata/56b22765e1007b79f2000079/train/haskell

import Data.Char (digitToInt)


isNarcissistic :: Integer -> Bool
isNarcissistic num = (== num) . sum . map ((^ n) . toInteger) $ digits
  where
    digits = toDigits num :: [Int]
    n = toInteger . length $ digits :: Integer


toDigits :: Integer -> [Int]
toDigits = map digitToInt . show
