module Codewars.G964.Operarray where

--  https://www.codewars.com/kata/56efab15740d301ab40002ee/train/haskell

gcdi :: Integer -> Integer -> Integer
gcdi = gcd

lcmu :: Integer -> Integer -> Integer
lcmu = lcm

som :: Integer -> Integer -> Integer
som = (+)

maxi :: Integer -> Integer -> Integer
maxi = max

mini :: Integer -> Integer -> Integer
mini = min

operArray :: (Integer -> Integer -> Integer) -> [Integer] -> Integer -> [Integer]
operArray fct arr init' = tail . scanl fct init' $ arr
