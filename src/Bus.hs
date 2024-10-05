module Bus (enough) where

-- https://www.codewars.com/kata/5875b200d520904a04000003/train/haskell

enough :: Int -> Int -> Int -> Int
enough cap on wait
  | diff < 0 = abs diff
  | otherwise = 0
  where
    diff = cap - on - wait
