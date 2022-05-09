module Codewars.Kata.Arithmetic where

--  https://www.codewars.com/kata/52de553ebb55d1fca3000371/train/haskell

findMissing :: Integral n => [n] -> n
findMissing (x1 : x2 : x3 : xs)
  | diff21 == diff32 = findMissing (x2 : x3 : xs)
  | diff21 > diff32 = x1 + (x3 - x2)
  | otherwise = x2 + (x2 - x1)
  where
    diff21 = abs (x2 - x1)
    diff32 = abs (x3 - x2)
