module Values where

-- https://www.codewars.com/kata/58a66c208b88b2de660000c3/train/haskell

import Data.List (nub)

missingValues :: [Int] -> Int
missingValues xs = x * x * y
  where
    withCount = map (\x -> (length . filter (== x) $ xs, x)) . nub $ xs :: [(Int, Int)]
    x = snd . head . filter ((== 1). fst) $ withCount :: Int
    y = snd . head . filter ((== 2). fst) $ withCount :: Int
