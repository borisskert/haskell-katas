module Unflatten where

-- https://www.codewars.com/kata/57e2dd0bec7d247e5600013a/train/haskell

unflatten :: [Int] -> [[Int]]
unflatten [] = []
unflatten xs
  | head xs < 3 = [head xs] : unflatten (tail xs)
  | otherwise = fst split : unflatten (snd split)
  where
    split = splitAt (head xs) xs :: ([Int], [Int])
