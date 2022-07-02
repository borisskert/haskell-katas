module Coprime (coprime) where

--  https://www.codewars.com/kata/585c50e75d0930e6a7000336/train/haskell

coprime :: Word -> Word -> Bool
coprime a b = gcd a b == 1
