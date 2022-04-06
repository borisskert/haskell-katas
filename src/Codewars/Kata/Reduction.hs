module Codewars.Kata.Reduction where

import Codewars.Kata.Reduction.Direction

-- https://www.codewars.com/kata/550f22f4d758534c1100025a/train/haskell

dirReduce :: [Direction] -> [Direction]
dirReduce directions
  | directions == reduced = directions
  | otherwise = dirReduce reduced
  where
    reduced = reduceOnce directions

    reduceOnce :: [Direction] -> [Direction]
    reduceOnce [] = []
    reduceOnce [x] = [x]
    reduceOnce (a : b : xs)
      | a `isOppositeOf` b = reduceOnce xs
      | otherwise = a : reduceOnce (b : xs)

    isOppositeOf :: Direction -> Direction -> Bool
    isOppositeOf North South = True
    isOppositeOf South North = True
    isOppositeOf East West = True
    isOppositeOf West East = True
    isOppositeOf _ _ = False
