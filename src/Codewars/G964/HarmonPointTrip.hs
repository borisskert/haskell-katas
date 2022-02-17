module Codewars.G964.HarmonPointTrip where

-- https://www.codewars.com/kata/5600e00e42bcb7b9dc00014e/train/haskell

import Text.Printf (printf)

harmonPointTrip :: Float -> Float -> Float -> String
harmonPointTrip a b c = printf "%.2f" d
  where
    ratio = (c - a) / (c - b)
    d = (ratio * b + a) * (1 / (1 + ratio))
