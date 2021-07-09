module Codewars.Kata.Paperwork where

-- https://www.codewars.com/kata/55f9b48403f6b87a7c0000bd/train/haskell

paperwork :: Int -> Int -> Int
paperwork n m
  | n > 0 && m > 0 = n * m
  | otherwise = 0
