module CasinoChips (solve) where

--  https://www.codewars.com/kata/5e0b72d2d772160011133654/train/haskell

import Data.List (sort)

solve :: [Int] -> Int
solve abc
  | x + y < z = x + y
  | otherwise = (x + y - z) `div` 2 + z
  where
    (x : y : z : _) = sort abc
