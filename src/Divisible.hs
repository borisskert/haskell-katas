module Divisible where

--  https://www.codewars.com/kata/58630e2ae88af44d2b0000ea/train/haskell

go :: Int -> Int -> Bool
go = is_divisible

is_divisible :: Int -> Int -> Bool
is_divisible wall pixel
  | wall `mod` pixel == 0 = True
  | otherwise             = False
