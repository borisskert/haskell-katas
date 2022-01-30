module ConstructABitVectorSet (sortByBit) where

-- https://www.codewars.com/kata/52f5424d0531259cfc000d04/train/haskell

sortByBit :: [Int] -> Int
sortByBit = sum . map (2 ^)
