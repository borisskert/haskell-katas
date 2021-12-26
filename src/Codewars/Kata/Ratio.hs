module Codewars.Kata.Ratio where

-- https://www.codewars.com/kata/55486cb94c9d3251560000ff/train/haskell

showRatio :: Int -> Int -> Maybe String
showRatio 0 _ = Nothing
showRatio _ 0 = Nothing
showRatio a b = Just formatted
  where
    gcd' = gcd a b
    ratio = (a `div` gcd', b `div` gcd')
    formatted = (show . fst $ ratio) ++ ":" ++ (show . snd $ ratio)
