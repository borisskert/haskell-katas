module Codewars.Kata.ZipValidate where

-- https://www.codewars.com/kata/552e45cc30b0dbd01100001a/train/haskell

import Data.Char (isNumber)

zipValidate :: String -> Bool
zipValidate xs = all (\rule -> rule xs) rules
  where
    rules =
      [ \xs -> length xs == 6,
        \xs -> filter isNumber xs == xs,
        \xs -> head xs /= '0',
        \xs -> head xs /= '5',
        \xs -> head xs /= '7',
        \xs -> head xs /= '8',
        \xs -> head xs /= '9'
      ] ::
        [String -> Bool]
