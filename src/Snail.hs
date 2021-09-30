module Snail where

-- https://www.codewars.com/kata/5b93fecd8463745630001d05/train/haskell

snail :: Int -> Int -> Int -> Int
snail height up down = day 0
  where
    day :: Int -> Int
    day meters
      | meters + up >= height = 1
      | otherwise = 1 + night (meters + up)

    night :: Int -> Int
    night meters = day (meters - down)
