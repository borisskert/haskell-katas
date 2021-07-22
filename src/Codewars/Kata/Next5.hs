module Codewars.Kata.Next5 where

--  https://www.codewars.com/kata/55d1d6d5955ec6365400006d/train/haskell

roundToNext5 :: Int -> Int
roundToNext5 n
  | mod10 == 0 = n
  | mod5 == 0 = n
  | mod10 < 5 = n + (5 - mod5)
  | otherwise = n + (10 - mod10)
  where
    mod5 = n `mod` 5
    mod10 = n `mod` 10
