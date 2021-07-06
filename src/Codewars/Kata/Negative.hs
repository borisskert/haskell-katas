module Codewars.Kata.Negative where

makeNegative :: (Num a, Ord a) => a -> a
makeNegative a = do
  if a > 0
    then negate a
    else a
