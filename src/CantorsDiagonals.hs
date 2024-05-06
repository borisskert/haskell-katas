module CantorsDiagonals (cantor) where

-- https://www.codewars.com/kata/5a5e4f5f118dd1b407000028/train/haskell

cantor :: [[Word]] -> [Word]
cantor [] = []
cantor ((x : _) : xs) = invert x : cantor (map tail xs)

invert :: Word -> Word
invert 0 = 1
invert 1 = 0
