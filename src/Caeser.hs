module Caeser where

-- https://www.codewars.com/kata/56dc695b2a4504b95000004e/train/haskell

import Data.Char (chr, isAscii, isLetter, ord, toUpper)

caeser :: String -> Int -> String
caeser cs x = map encrypt cs
  where
    encrypt :: Char -> Char
    encrypt c
      | encryptable =
        chr
          . (+ offset)
          . (`mod` 26)
          . (+ x)
          . (+ negate offset)
          . ord
          . toUpper
          $ c
      | otherwise = c
      where
        offset = ord 'A'

        encryptable = isAscii c && isLetter c
