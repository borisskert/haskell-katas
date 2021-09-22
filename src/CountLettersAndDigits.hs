module CountLettersAndDigits where

-- https://www.codewars.com/kata/5738f5ea9545204cec000155/train/haskell

import Data.Char (isLetter, isDigit)


countLettersAndDigits :: String -> Int
countLettersAndDigits s = letters + digits
  where
    letters = length . filter isLetter $ s :: Int
    digits = length . filter isDigit $ s :: Int
