module BoiledEggs where

-- https://www.codewars.com/kata/52b5247074ea613a09000164/train/haskell

cookingTime :: Integer -> Integer
cookingTime n
  | n `mod` maxEggs == 0 = times * boilTime
  | otherwise = (times + 1) * boilTime
  where
    maxEggs = 8
    times = n `div` maxEggs
    boilTime = 5
