module Dalmatians where

--  https://www.codewars.com/kata/56f6919a6b88de18ff000b36/train/haskell

howManyDalmatians :: Int -> String
howManyDalmatians count
  | count <= 10 = "Hardly any"
  | count <= 50 = "More than a handful!"
  | count == 101 = "101 DALMATIONS!!!"
  | otherwise = "Woah that's a lot of dogs!"
