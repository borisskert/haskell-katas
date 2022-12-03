module Kata.RLE (encode, decode) where

-- https://www.codewars.com/kata/578bf2d8daa01a4ee8000046/train/haskell

import Data.Char (isDigit)
import Data.List (group)

encode :: String -> String
encode = concatMap encodeGroup . group
  where
    encodeGroup :: String -> String
    encodeGroup g = (show . length $ g) ++ [head g]

decode :: String -> String
decode [] = []
decode cs = replicate amount char ++ decode rest
  where
    amount = read . takeWhile isDigit $ cs :: Int
    char = head . dropWhile isDigit $ cs
    rest = tail . dropWhile isDigit $ cs
