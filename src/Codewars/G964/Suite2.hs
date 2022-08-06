module Codewars.G964.Suite2 where

-- https://www.codewars.com/kata/55ab4f980f2d576c070000f4/train/haskell

game :: Integer -> Either Integer (Integer, Integer)
game n
  | odd n = Right (n * n, 2)
  | otherwise = Left . (`div` 2) $ (n * n)
