module Discover where

-- https://www.codewars.com/kata/552564a82142d701f5001228/train/haskell

discoverOriginalPrice :: Double -> Double -> Double
discoverOriginalPrice price discount = round2 . (/ (100.0 - discount)) . (* 100.0) $ price


round2 :: Double -> Double
round2 = (/ 10 ^ n) . fromInteger . round . (* 10.0 ^ n)
  where n = 2
