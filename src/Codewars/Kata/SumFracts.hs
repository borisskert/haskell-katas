module Codewars.Kata.SumFracts where

--  https://www.codewars.com/kata/5517fcb0236c8826940003c9/train/haskell

import Data.Ratio
import Text.Printf (printf)

sumFracts :: [(Integer, Integer)] -> Maybe String
sumFracts = toString . sum . map toRatio

toRatio :: (Integer, Integer) -> Ratio Integer
toRatio (n, d) = n % d

toString :: Ratio Integer -> Maybe String
toString r
  | n == 0 = Nothing
  | d == 1 = Just . show $ n
  | otherwise = Just . printf "%d %d" n $ d
  where
    n = numerator r
    d = denominator r
