module Similarity where

-- https://www.codewars.com/kata/58a6841442fd72aeb4000080/train/haskell

import Data.List (intersect, union)

similarity :: ([Int], [Int]) -> Double
similarity (xs, ys) = i / u
  where
    i = fromIntegral . length . intersect xs $ ys :: Double
    u = fromIntegral . length . union xs $ ys :: Double
