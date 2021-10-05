module ShiftLeft where

-- https://www.codewars.com/kata/5bdc191306a8a678f6000187/train/haskell

shiftLeft :: String -> String -> Int
shiftLeft s t
  | s == t = 0
  | length s > length t = shiftLeft t s
  | otherwise = 1 + shiftLeft s (tail t)
