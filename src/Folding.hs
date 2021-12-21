module Folding where

-- https://www.codewars.com/kata/58bfa1ea43fadb41840000b4/train/haskell

folding :: Int -> Int -> Integer
folding a b
  | a == b = 1
  | b > a = folding b a
  | snd aDivmodB == 0 = toInteger . fst $ aDivmodB
  | otherwise = 1 + folding (a - b) b
  where
    aDivmodB = divMod a b
