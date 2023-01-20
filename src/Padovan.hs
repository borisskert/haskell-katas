module Padovan (padovan) where

-- https://www.codewars.com/kata/5803ee0ed5438edcc9000087/train/haskell

padovan :: Int -> Integer
padovan = (!!) $ mkSequence (1, 1, 1)

mkSequence :: (Integer, Integer, Integer) -> [Integer]
mkSequence (a, b, c) = a : mkSequence (b, c, a + b)
