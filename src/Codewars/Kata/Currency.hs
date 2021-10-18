module Codewars.Kata.Currency where

-- https://www.codewars.com/kata/54e9554c92ad5650fe00022b/train/haskell

import Data.List (intercalate)


toCurrency :: Integer -> String
toCurrency = intercalate "," . map show . groupInt 3


groupInt :: Int -> Integer -> [Int]
groupInt size i
  | i > (divisor - 1) = groupInt size next ++ [rest]
  | otherwise = [rest]
  where
    divisor = 10 ^ size
    nextRest = divMod i divisor
    next = fst nextRest :: Integer
    rest = fromInteger . snd $ nextRest :: Int


-- interesting function:
-- import Data.List.Split (chunksOf)
-- toCurrency :: Integer -> String
-- toCurrency = reverse . intercalate "," . chunksOf 3 . reverse . show
