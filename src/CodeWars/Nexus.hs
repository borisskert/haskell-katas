module CodeWars.Nexus (nexus) where

--  https://www.codewars.com/kata/5453dce502949307cf000bff/train/haskell

import Data.List (minimumBy)

nexus :: [(Int, Int)] -> Int
nexus = fst . minimumBy compareUsers

compareUsers :: (Int, Int) -> (Int, Int) -> Ordering
compareUsers (rankA, honorA) (rankB, honorB)
  | diffA == diffB = compare rankA rankB
  | otherwise = compare diffA diffB
  where
    diffA = abs (rankA - honorA)
    diffB = abs (rankB - honorB)
