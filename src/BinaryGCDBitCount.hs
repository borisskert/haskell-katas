module BinaryGCDBitCount where

-- https://www.codewars.com/kata/54b45c37041df0caf800020f/train/haskell

import Data.Bits (Bits (popCount))

binaryGCD :: Int -> Int -> Int
binaryGCD n = popCount . gcd n
