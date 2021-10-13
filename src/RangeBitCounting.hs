module RangeBitCounting (rangeBitCount) where

-- https://www.codewars.com/kata/58845748bd5733f1b300001f/train/haskell

import Data.Bits (popCount)

rangeBitCount :: Int -> Int -> Int
rangeBitCount a b = sum . map popCount $ [a, (a + 1) .. b]
