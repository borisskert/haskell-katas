module Codewars.Kata.Decimals where

--  https://www.codewars.com/kata/5641a03210e973055a00000d/train/haskell

twoDecimalPlaces :: Double -> Double
twoDecimalPlaces x = (fromInteger $ round $ x * (10^n)) / (10.0^^n)
  where n = 2
