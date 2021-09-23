module Poet where

-- https://www.codewars.com/kata/5bd776533a7e2720c40000e5/train/haskell

import Data.List (sort, sortBy)

pendulum :: [Int] -> [Int]
pendulum = toPendulum . zip [0..] . sort
  where
    compareOrder :: (Int, Int) -> (Int, Int) -> Ordering
    compareOrder (order1, _) (order2, _) = compare order1 order2

    toPendulum :: [(Int, Int)] -> [Int]
    toPendulum = map snd . sortBy compareOrder . map toOrder
      where
        toOrder :: (Int, Int) -> (Int, Int)
        toOrder (index, value)
          | even index = (- index, value)
          | otherwise = (index, value)
