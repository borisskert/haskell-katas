module Jefferson where

-- https://www.codewars.com/kata/59321f29a010d5aa80000066/train/haskell

import Data.Maybe (fromMaybe)

shortestArrang :: Int -> [Int]
shortestArrang x
  | even x = maybe [-1] (uncurry range) $ find (half, half - 1)
  | otherwise = maybe [-1] (uncurry range) $ find (half + 1, half)
  where
    half = x `div` 2

    find :: (Int, Int) -> Maybe (Int, Int)
    find (a, b)
      | g == x = Just (a, b)
      | g < x && b == 1 = Nothing
      | g < x = find (a, b - 1)
      | g > x && b == 1 = Nothing
      | g > x && d == 1 = find (a - 1, b - 1)
      | otherwise = find (a - 1, b)
      where
        g = gaussBetween a b
        d = a - b

-- Sum of all natural numbers between a and b
gaussBetween :: Integral a => a -> a -> a
gaussBetween a b
  | b < a = gaussBetween b a
  | otherwise = gauss b - gauss a + a

-- Sum of the first n natural numbers
gauss :: Integral a => a -> a
gauss n = n * (n + 1) `div` 2

range :: Int -> Int -> [Int]
range from to
  | from == to = [from]
  | from < to = [from .. to]
  | otherwise = [from, from - 1 .. to]
