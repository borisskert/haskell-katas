module Manhattan where

-- https://www.codewars.com/kata/52998bf8caa22d98b800003a/train/haskell

manhattanDistance :: (Int, Int) -> (Int, Int) -> Int
manhattanDistance (x1, y1) (x2, y2) = abs (x1 - x2) + abs (y1 - y2)
