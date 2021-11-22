module Packing where

-- https://www.codewars.com/kata/588453ea56daa4af920000ca/train/haskell

arrayPacking :: [Integer] -> Integer
arrayPacking = binToInteger . concatMap integerToByte . reverse

integerToByte :: Integer -> [Bool]
integerToByte n
  | size < 8 = replicate (8 - size) False ++ bits
  | otherwise = take 8 bits
  where
    bits = integerToBin n
    size = length bits

    integerToBin :: Integer -> [Bool]
    integerToBin n
      | div2 > 0 = integerToBin div2 ++ [rest]
      | otherwise = [rest]
      where
        div2 = n `div` 2
        rest = n `mod` 2 == 1

binToInteger :: [Bool] -> Integer
binToInteger [] = 0
binToInteger b = binToInteger (init b) * 2 + value
  where
    value = if last b then 1 else 0
