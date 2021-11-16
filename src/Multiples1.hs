module Multiples1 where

-- https://www.codewars.com/kata/593c9175933500f33400003e/train/haskell

multiples :: Int -> Double -> [Double]
multiples n value = map ((* value) . fromIntegral) [1 .. n]
