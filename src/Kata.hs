module Kata (racePodium) where

--  https://www.codewars.com/kata/62cecd4e5487c10028996e04/train/haskell

racePodium :: Int -> (Int, Int, Int)
racePodium blocks
  | c > 0 = (b, a, c)
  | otherwise = (b - 1, a, 1)
  where
    a = (blocks - 1) `div` 3 + 2
    b = a - 1
    c = blocks - a - b
