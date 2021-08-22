module Gap where 

-- https://www.codewars.com/kata/5a7893ef0025e9eb50000013/train/haskell

import Data.List (sort)


maxGap :: [Int] -> Int
maxGap = findTheGap 0 . sort
  where
    findTheGap :: Int -> [Int] -> Int
    findTheGap max [] = max
    findTheGap max [_] = max
    findTheGap max (x1:x2:others)
      | gap > max = findTheGap gap (x2:others)
      | otherwise = findTheGap max (x2:others)
      where
        gap = abs (x1 - x2) :: Int
