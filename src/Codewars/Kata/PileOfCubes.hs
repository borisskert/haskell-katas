module Codewars.Kata.PileOfCubes where

-- https://www.codewars.com/kata/5592e3bd57b64d00f3000047/train/haskell

findNb :: Integer -> Integer
findNb = count 1
  where
    count :: Integer -> Integer -> Integer
    count n m
      | m == cube = n
      | m > cube = count (n + 1) (m - cube)
      | otherwise = -1
      where
        cube = n ^ 3
