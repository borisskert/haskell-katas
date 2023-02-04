module Codewars.Kata.Pizza where

-- https://www.codewars.com/kata/5551dc71101b2cf599000023/train/haskell

maxPizza :: Integer -> Maybe Integer
maxPizza 0 = Just 1
maxPizza n
  | n < 0 = Nothing
  | otherwise = fmap (+ n) . maxPizza $ (n - 1)

-- #againwhatlearned
-- Use a formula
-- maxPizza n
--  | n < 0     = Nothing
--  | otherwise = Just $ n * (n + 1) `div` 2 + 1
