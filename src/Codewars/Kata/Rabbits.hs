module Codewars.Kata.Rabbits (fibRabbits) where

-- https://www.codewars.com/kata/5559e4e4bbb3925164000125/train/haskell

fibRabbits ::
  -- | number of months
  Int ->
  -- | number of offsprings per adult pair
  Integer ->
  -- | Returns the number of adult rabbits after the given months.
  Integer
fibRabbits n b = go n (1, 0)
  where
    go :: Int -> (Integer, Integer) -> Integer
    go 0 (_, a) = a
    go n (o, a) = go (n - 1) (a * b, a + o)
