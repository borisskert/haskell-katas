module Codewars.Kata.Decimals where

-- https://www.codewars.com/kata/5641c3f809bf31f008000042/train/haskell

twoDecimalPlaces :: Double -> Double
twoDecimalPlaces i = (* signum i) . (/ 10 ^ n) . fromInteger . floor . (* 10.0 ^ n) . abs $ i
  where
    n = 2
