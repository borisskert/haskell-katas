module Kata where

-- https://www.codewars.com/kata/5842df8ccbd22792a4000245/train/haskell

import Text.Printf (printf)

expandedForm :: Int -> String
expandedForm n
  | nextN == 0 = show n
  | otherwise = printf "%d + %s" (digit * base) (expandedForm nextN)
  where
    base = (10 ^) . floor . logBase 10 . fromIntegral $ n :: Int
    (digit, nextN) = n `divMod` base
