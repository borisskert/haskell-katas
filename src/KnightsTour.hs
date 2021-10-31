module KnightsTour (check) where

-- https://www.codewars.com/kata/5fc836f5a167260008dfad7f/train/haskell

check :: Int -> Int -> Bool
check 5 3 = False
check 6 3 = False
check a b
  | a < 3 || b < 3 = False
  | a == b && a < 5 = False
  | b > a = check b a
  | otherwise = True
