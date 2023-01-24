module PerpendicularLines (maxBisectors) where

-- https://www.codewars.com/kata/6391fe3f322221003db3bad6/train/haskell

maxBisectors :: Word -> Word
maxBisectors n
  | even n = half * half
  | otherwise = half * (half + 1)
  where
    half = n `div` 2
