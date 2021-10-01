module Circle where

-- https://www.codewars.com/kata/537baa6f8f4b300b5900106c/train/haskell

circleArea :: Double -> Maybe Double
circleArea x
  | x > 0.0 = Just (pi * x * x)
  | otherwise = Nothing
