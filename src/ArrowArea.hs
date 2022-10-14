module ArrowArea (arrowArea) where

-- https://www.codewars.com/kata/589478160c0f8a40870000bc/train/haskell

arrowArea :: Int -> Int -> Double
arrowArea a b = b' / 4 * a'
  where
    b' = fromIntegral b
    a' = fromIntegral a
