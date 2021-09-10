module Tetris (score) where

-- https://www.codewars.com/kata/5da9af1142d7910001815d32/train/haskell

score :: [Int] -> Int
score = sumScore 0


sumScore :: Int -> [Int] -> Int
sumScore _ [] = 0
sumScore lines xs = score + sumScore sumLines (tail xs)
  where
    current = head xs
    level = lines `div` 10
    score = toScore level current
    sumLines = lines + current


toScore :: Int -> Int -> Int
toScore _ 0 = 0
toScore level 1 = 40 * (level + 1)
toScore level 2 = 100 * (level + 1)
toScore level 3 = 300 * (level + 1)
toScore level 4 = 1200 * (level + 1)
