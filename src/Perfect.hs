module Perfect (findNextSquare) where

--  https://www.codewars.com/kata/56269eb78ad2e4ced1000013/train/haskell

findNextSquare :: Integer -> Integer
findNextSquare n
  | root * root == n = (root + 1) * (root + 1)
  | otherwise = -1
  where
    root = floor . sqrt . (fromInteger :: Integer -> Double) $ n :: Integer
