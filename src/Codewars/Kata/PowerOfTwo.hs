module Codewars.Kata.PowerOfTwo where

-- https://www.codewars.com/kata/534d0a229345375d520006a0/train/haskell

import Data.Bits(Bits, (.&.))


isPowerOfTwo :: Int -> Bool
isPowerOfTwo 0 = False
isPowerOfTwo n = isPowerOf2 n
  where
    isPowerOf2 :: (Bits i, Integral i) => i -> Bool
    isPowerOf2 n = n .&. (n - 1) == 0
