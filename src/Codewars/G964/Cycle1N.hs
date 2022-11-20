module Codewars.G964.Cycle1N where

--  https://www.codewars.com/kata/5a057ec846d843c81a0000ad/train/haskell

cycli :: Int -> Int
cycli n
  | even n = -1
  | n `mod` 5 == 0 = -1
  | otherwise = find 1
  where
    find :: Int -> Int
    find i
      | nextI == 1 = 1
      | otherwise = 1 + find nextI
      where
        nextI = (i * 10) `mod` n
