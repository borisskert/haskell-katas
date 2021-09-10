module GridMap where

-- https://www.codewars.com/kata/606b43f4adea6e00425dff42/train/haskell

gridMap :: (a -> b) -> [[a]] -> [[b]]
gridMap f = map (map f)
