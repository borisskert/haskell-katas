module Codewars.Kata.Opposites where

-- https://www.codewars.com/kata/555086d53eac039a2a000083/train/haskell

inlove :: Int -> Int -> Bool
inlove a b
  | odd a && even b = True
  | even a && odd b = True
  | otherwise = False
