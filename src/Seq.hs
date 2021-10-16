module Seq where

-- https://www.codewars.com/kata/5bd00c99dbc73908bb00057a/train/haskell

import Data.List (sort, intercalate)
import Data.Char (ord, toLower, toUpper)

alphaSeq :: String -> String
alphaSeq = intercalate "," . map (capitalize . replicateByValue) . sort . map toLower
  where
    replicateByValue :: Char -> String
    replicateByValue char = replicate value char
      where
        value = toValue char

        toValue :: Char -> Int
        toValue = subtract offset . ord
          where
            offset = ord 'a' - 1

    capitalize :: String -> String
    capitalize [] = []
    capitalize text = toUpper (head text) : tail text
