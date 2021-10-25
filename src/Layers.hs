module Layers where

-- https://www.codewars.com/kata/5a254114e1ce0ecf6a000168/train/haskell

layers :: Int -> Int
layers = ceiling . (* 0.5) . (+ 1.0) . sqrt . fromIntegral
