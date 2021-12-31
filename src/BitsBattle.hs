module BitsBattle (bitsBattle) where

-- https://www.codewars.com/kata/58856a06760b85c4e6000055/train/haskell

import Data.Bits (Bits (popCount), FiniteBits (finiteBitSize), countLeadingZeros)

bitsBattle :: [Word] -> String
bitsBattle xs
  | evens == odds = "tie"
  | evens > odds = "evens win"
  | otherwise = "odds win"
  where
    evens = sum . map scoreEven . filter even $ xs :: Int
    odds = sum . map scoreOdd . filter odd $ xs :: Int

scoreOdd :: Word -> Int
scoreOdd = popCount

scoreEven :: Word -> Int
scoreEven x = bits - leadingZeros - ones
  where
    leadingZeros = countLeadingZeros x
    bits = finiteBitSize x
    ones = popCount x
