module BubblesortOnce (bubblesortOnce) where

-- https://www.codewars.com/kata/56b97b776ffcea598a0006f2/train/haskell

bubblesortOnce :: [Int] -> [Int]
bubblesortOnce (x : y : xs)
  | x > y = y : bubblesortOnce (x : xs)
  | otherwise = x : bubblesortOnce (y : xs)
bubblesortOnce xs = xs
