module Even (isEven) where

-- https://www.codewars.com/kata/555a67db74814aa4ee0001b5/train/haskell

isEven :: Double -> Bool
isEven n = remainder == 0.0
  where
    (_, remainder) = divMod' n 2

divMod' :: Double -> Int -> (Int, Double)
divMod' a b = (d', a - d * b')
  where
    b' = fromIntegral b :: Double
    d' = floor (a / b') :: Int
    d = fromIntegral d' :: Double

-- #againwhatlearned: Use mod' or divMod' from Data.Fixed module:
-- import Data.Fixed (mod')
-- isEven n = mod' n 2 == 0
