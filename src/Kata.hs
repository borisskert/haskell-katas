module Kata (reverseSlice) where

-- https://www.codewars.com/kata/586efc2dcf7be0f217000619/train/haskell

reverseSlice :: String -> [String]
reverseSlice = slice . reverse
  where
    slice :: String -> [String]
    slice [] = []
    slice s = s : slice (tail s)
