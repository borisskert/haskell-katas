module Haskell.Codewars.RelativePrimes where

-- https://www.codewars.com/kata/56b0f5f84de0afafce00004e/train/haskell

relativelyPrime :: Integral t => t -> [t] -> [t]
relativelyPrime n = filter ((== 1) . gcd n)
