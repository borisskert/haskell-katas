module DeltaBits (convertBits) where

-- https://www.codewars.com/kata/538948d4daea7dc4d200023f/train/haskell

import Data.Bits (Bits (popCount, xor))

convertBits :: Int -> Int -> Int
convertBits = (popCount .) . xor
