module Codewars.Kata.SillyCASE where

-- https://www.codewars.com/kata/552ab0a4db0236ff1a00017a/train/haskell

import Data.Char (toLower, toUpper)

sillyCASE :: String -> String
sillyCASE xs = zipWith silly [1 ..] xs
  where
    size = length xs

    half
      | even size = (`div` 2) size
      | otherwise = (+ 1) . (`div` 2) $ size

    silly index char
      | index > half = toUpper char
      | otherwise = toLower char
