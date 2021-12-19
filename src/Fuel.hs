module Fuel where

-- https://www.codewars.com/kata/558aa460dcfb4a94c40001d7/train/haskell

kmPerMile = 1.609344 :: Double

litersPerGallon = 3.785411784 :: Double

mpg_lp100km :: Double -> Double
mpg_lp100km = round2 . (100 /) . (/ litersPerGallon) . (* kmPerMile)

lp100km_mpg :: Double -> Double
lp100km_mpg = round2 . (1 /) . (* kmPerMile) . (/ litersPerGallon) . (/ 100)

round2 :: Double -> Double
round2 = (/ 10 ^ n) . fromInteger . round . (* 10.0 ^ n)
  where
    n = 2
