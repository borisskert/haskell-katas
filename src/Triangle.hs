module Triangle (cumulativeTriangle) where

-- https://www.codewars.com/kata/5301329926d12b90cc000908/train/haskell

cumulativeTriangle :: Integral a => a -> a
cumulativeTriangle x = gaussBetween y (y + x - 1)
  where
    y = start x

start :: Integral a => a -> a
start x = (x * x - x + 2) `div` 2

-- Sum of the first n natural numbers
gauss :: Integral a => a -> a
gauss n = n * (n + 1) `div` 2

-- Sum of all natural numbers between a and b
gaussBetween :: Integral a => a -> a -> a
gaussBetween a b = gauss b - gauss a + a
