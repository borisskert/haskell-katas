module SafeSqrt where

-- https://www.codewars.com/kata/57ecdd3d2559761b60000403/train/haskell

safeSqrt :: Int -> String
safeSqrt x
  | x < 0 = "invalid input"
  | otherwise = show . sqrt . fromIntegral $ x
