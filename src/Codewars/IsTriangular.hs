module Codewars.IsTriangular where

-- https://www.codewars.com/kata/56d0a591c6c8b466ca00118b/train/haskell

isTriangular :: Int -> Bool
isTriangular t = t == getY x
  where
    x = getX t :: Int

    getY :: Int -> Int 
    getY x = x * (x + 1) `div` 2

    getX :: Int -> Int
    getX c = floor (- 0.5 + sqrt (0.25 + 2 * fromIntegral c))
