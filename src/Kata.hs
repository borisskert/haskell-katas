module Kata (wordsToMarks) where

-- https://www.codewars.com/kata/59706036f6e5d1e22d000016/train/haskell

import Data.Char (ord)


wordsToMarks :: String -> Int
wordsToMarks = sum . map toOrd


toOrd :: Char -> Int
toOrd char = ord char - offset
  where
    offset = ord 'a' - 1
