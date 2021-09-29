module Fusc where

-- https://www.codewars.com/kata/570409d3d80ec699af001bf9/train/haskell

fusc :: Int -> Int
fusc 0 = 0
fusc 1 = 1
fusc 2 = 1
fusc n
  | even n = fusc halfN
  | otherwise = fusc halfN + fusc (halfN + 1)
  where
    halfN = n `div` 2 :: Int
