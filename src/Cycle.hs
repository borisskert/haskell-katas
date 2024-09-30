module Cycle where

-- https://www.codewars.com/kata/5456812629ccbf311b000078/train/haskell

data Direction = L | R deriving (Show)

cycleList :: (Eq a) => Direction -> [a] -> a -> Maybe a
cycleList _ [x] i
  | x == i = Just x
  | otherwise = Nothing
cycleList _ [x, y] i
  | y == i = Just x
  | x == i = Just y
  | otherwise = cycleList L [y] i
cycleList L (x : y : xs) i
  | y == i = Just x
  | x == i = Just (last xs)
  | otherwise = cycleList L (y : xs) i
cycleList R (x : y : xs) i
  | x == i = Just y
  | y == i = Just (head xs)
  | otherwise = cycleList R (x : xs) i
