module PaintedSides (paintedFaces) where

-- https://www.codewars.com/kata/65e594c5a93ef700294ced80/train/haskell
paintedFaces :: Int -> Int -> Int
paintedFaces 0 _ = 0
paintedFaces 1 s
  | s == 6 = 1
  | otherwise = 0
paintedFaces n 0 = (n - 2) ^ 3
paintedFaces n 1 = 6 * (n - 2) ^ 2
paintedFaces n 2 = 12 * (n - 2)
paintedFaces _ 3 = 8
paintedFaces _ _ = 0
