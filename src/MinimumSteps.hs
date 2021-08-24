module MinimumSteps where

-- https://www.codewars.com/kata/5a91a7c5fd8c061367000002/train/haskell

import Data.List (sort)

--best practice:
-- minimumSteps :: [Int] -> Int -> Int
-- minimumSteps xs n = length $ takeWhile (< n) $ scanl1 (+) $ sort xs


minimumSteps :: [Int] -> Int -> Int
minimumSteps integers k = steps 0 0 (sort integers)
  where
    steps :: Int -> Int -> [Int] -> Int
    steps step _ [] = step
    steps step sum list
      | sum + head list >= k = step
      | otherwise = steps (step + 1) (sum + head list) (tail list)
