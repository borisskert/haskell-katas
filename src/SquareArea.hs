module SquareArea where

--  https://www.codewars.com/kata/5748838ce2fab90b86001b1a/train/haskell

squareArea :: Double -> Double
squareArea a = round2 (radius * radius)
  where
    circumference = a * 4
    radius = circumference / pi / 2

--https://stackoverflow.com/a/12450771
round2 :: Double -> Double
round2 f = (fromInteger $ round $ f * (10^n)) / (10.0^^n)
  where n = 2
