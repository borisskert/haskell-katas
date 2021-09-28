module AllNonConsecutive (allNonConsecutive) where

-- https://www.codewars.com/kata/58f8b35fda19c0c79400020f/train/haskell

allNonConsecutive :: (Ord a, Num a, Eq a, Enum a) => [a] -> [(Int, a)]
allNonConsecutive = toNonConsecutive . zip [0 ..]
  where
    toNonConsecutive :: (Ord a, Num a, Eq a, Enum a) => [(Int, a)] -> [(Int, a)]
    toNonConsecutive [] = []
    toNonConsecutive [x] = []
    toNonConsecutive (x1 : x2 : others)
      | snd x2 - snd x1 > 1 = x2 : toNonConsecutive (x2 : others)
      | otherwise = toNonConsecutive (x2 : others)

-- interesting function `succ`
