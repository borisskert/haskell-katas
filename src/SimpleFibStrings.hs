module SimpleFibStrings where

-- https://www.codewars.com/kata/5aa39ba75084d7cf45000008/train/haskell

import Text.Printf (printf)
import Math.NumberTheory.Logarithms (integerLog2)


solve :: Int -> String
solve 0 = "0"
solve n = printf "0%b" . f . toInteger $ n


f :: Integer -> Integer
f 0 = 0
f 1 = 1
f 2 = 2
f n = fMinus2 + fMinus1 * 2 ^ (integerBitSize fMinus2 + 1)
  where
    fMinus1 = f (n - 1)
    fMinus2 = f (n - 2)


integerBitSize :: Integer -> Int
integerBitSize 0 = 1
integerBitSize n = integerLog2 (n * 2)
