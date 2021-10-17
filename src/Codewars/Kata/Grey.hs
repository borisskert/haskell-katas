module Codewars.Kata.Grey where

-- https://www.codewars.com/kata/54d22119beeaaaf663000024

import Text.Printf (printf)


shadesOfGrey :: Int -> [String]
shadesOfGrey n = map toRGB [1..n]
  where
    toRGB :: Int -> String
    toRGB n = printf "#%06x" . ((256 * 256 + 256 + 1) *) $ n
