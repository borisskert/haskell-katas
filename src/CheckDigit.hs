module CheckDigit where

-- https://www.codewars.com/kata/5a2e8c0955519e54bf0000bd/train/haskell

import Data.Char (digitToInt)

checkDigit :: Int -> Int -> Int -> Int -> Bool
checkDigit number index1 index2 digit =
  any (\x -> digits !! x == digit)
    . filter (< 14)
    $ indices
  where
    digits = toDigits number :: [Int]

    indices :: [Int]
    indices
      | index1 < index2 = [index1 .. index2]
      | index2 < index1 = [index2 .. index1]
      | otherwise = [index1]

toDigits :: Int -> [Int]
toDigits = map digitToInt . show
