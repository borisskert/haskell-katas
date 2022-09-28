module Codewars.Exercise.Inversions (countInversions) where

-- https://www.codewars.com/kata/537529f42993de0e0b00181f/train/haskell

import Data.Maybe (fromJust, isJust)

countInversions :: Ord a => [a] -> Int
countInversions xs
  | isJust inversion = 1 + countInversions inverted
  | otherwise = 0
  where
    inversion = findFirst xs
    inverted = (`invert` xs) . fromJust $ inversion

type Index = Int

type Inversion = (Index, Index)

invert :: Ord a => Inversion -> [a] -> [a]
invert (i, j) xs = go 0 xs
  where
    x = xs !! i
    y = xs !! j

    go _ [] = []
    go index (value : rest)
      | index == i = y : go (index + 1) rest
      | index == j = x : go (index + 1) rest
      | otherwise = value : go (index + 1) rest

findFirst :: Ord a => [a] -> Maybe Inversion
findFirst = find . (`zip` [0 ..])
  where
    find :: Ord a => [(a, Index)] -> Maybe Inversion
    find [] = Nothing
    find [_] = Nothing
    find ((x, i) : y'@(y, j) : rest)
      | x > y = Just (i, j)
      | otherwise = find (y' : rest)
