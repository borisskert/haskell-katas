module ConsecutiveDucks (consecutiveDucks) where

-- https://www.codewars.com/kata/5dae2599a8f7d90025d2f15f/train/haskell

consecutiveDucks :: Int -> Bool
consecutiveDucks 1 = False
consecutiveDucks n
  | odd n = True 
  | otherwise = consecutiveDucks (n `div` 2)
