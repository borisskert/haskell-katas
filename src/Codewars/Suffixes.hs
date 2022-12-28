module Codewars.Suffixes where

-- https://www.codewars.com/kata/52dca71390c32d8fb900002b/train/haskell

import Text.Printf (printf)

numberToOrdinal :: Int -> String
numberToOrdinal 0 = "0"
numberToOrdinal 11 = "11th"
numberToOrdinal 12 = "12th"
numberToOrdinal 13 = "13th"
numberToOrdinal n
  | remainder == 1 = printf "%dst" n
  | remainder == 2 = printf "%dnd" n
  | remainder == 3 = printf "%drd" n
  | otherwise = printf "%dth" n
  where
    remainder = n `mod` 10
