module NoisyCellCounts (cleanedCounts) where

-- https://www.codewars.com/kata/63ebadc7879f2500315fa07e/train/haskell

cleanedCounts :: [Word] -> [Word]
cleanedCounts [] = []
cleanedCounts [x] = [x]
cleanedCounts (x : y : xs)
  | x > y = x : cleanedCounts (x : xs)
  | otherwise = x : cleanedCounts (y : xs)
