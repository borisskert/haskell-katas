module FromToStepGenerator where

-- https://www.codewars.com/kata/56459c0df289d97bd7000083/train/haskell

generator :: Integer -> Integer -> Integer -> [Integer]
generator from to step
  | step == 0 = []
  | from < to = [from, (from + step) .. to]
  | otherwise = [from, (from - step) .. to]
