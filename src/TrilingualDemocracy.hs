module TrilingualDemocracy (trilingualDemocracy) where

-- https://www.codewars.com/kata/62f17be8356b63006a9899dc/train/haskell

import Data.List (sort)

trilingualDemocracy :: [Char] -> Char
trilingualDemocracy (a : b : c : _)
  | a == b && b == c = a
  | x == y = z
  | y == z = x
  | x == 'F' = 'D'
  | y == 'I' = 'F'
  | z == 'K' = 'I'
  | otherwise = 'K'
  where
    (x : y : z : _) = sort [a, b, c]
