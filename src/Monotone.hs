module Monotone where

-- https://www.codewars.com/kata/54466996990c921f90000d61/train/haskell

isMonotone :: Ord a => [a] -> Bool
isMonotone x = all allSuccessorsAreGreaterOrEqual withIndices
  where
    withIndices = zip [0..] x
    
    allSuccessorsAreGreaterOrEqual (index, value) = all (>= value) successors
      where
        successors = map snd . filter ((> index) . fst) $ withIndices


-- interesting:
-- isMonotone x = and . zipWith (<=) x $ tail x


-- best practice:
-- isMonotone :: Ord a => [a] -> Bool
-- isMonotone [] = True
-- isMonotone (_:[]) = True
-- isMonotone (x:y:xs) = x <= y && isMonotone (y:xs)
