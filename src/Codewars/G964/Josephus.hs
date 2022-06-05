module Codewars.G964.Josephus where

-- https://www.codewars.com/kata/555624b601231dc7a400017a/train/haskell

josephusSurvivor :: Int -> Int -> Int
josephusSurvivor 1 _ = 1
josephusSurvivor n k = (+ 1) . (`mod` n) . (+ (k - 1)) . josephusSurvivor (n - 1) $ k
