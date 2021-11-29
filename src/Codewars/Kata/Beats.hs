module Codewars.Kata.Beats where

-- https://www.codewars.com/kata/5751aa92f2dac7695d000fb0/train/haskell

beasts :: Integer -> Integer -> Maybe (Integer, Integer)
beasts heads tails
  | orthuses < 0 || hydras < 0 = Nothing
  | orthuses * 2 + hydras * 5 /= heads = Nothing
  | otherwise = Just (orthuses, hydras)
  where
    hydras = (heads - 2 * tails) `div` 3
    orthuses = tails - hydras
