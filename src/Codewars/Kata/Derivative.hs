module Codewars.Kata.Derivative where

--  https://www.codewars.com/kata/5963c18ecb97be020b0000a2/train/haskell

derive :: Int -> Int -> String
derive coefficient 1        = show coefficient
derive coefficient exponent = show (coefficient * exponent) ++ "x" ++ "^" ++ show (exponent - 1)
