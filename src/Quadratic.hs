module Quadratic (roots) where

-- https://www.codewars.com/kata/57d448c6ba30875437000138/train/haskell

roots :: Double -> Double -> Double -> Maybe Double
roots a b c
  | discriminant < 0 = Nothing
  | otherwise = Just $ root1 + root2
  where
    discriminant = b * b - 4 * a * c
    root1 = (-b - sqrt discriminant) / (2 * a)
    root2 = (-b + sqrt discriminant) / (2 * a)
