module Codewars.Frequency where

-- https://www.codewars.com/kata/56582133c932d8239900002e/train/haskell

--best practice:
-- import Data.List

-- mostFrequentItemCount :: [Int] -> Int
-- mostFrequentItemCount = maximum . (0 :) . map length . group . sort


import Data.List (nub, sortBy)

mostFrequentItemCount :: [Int] -> Int
mostFrequentItemCount [] = 0
mostFrequentItemCount xs = toCount . last . sortedByCount . withCount $ xs
  where
    numbers = nub xs

    count :: Int -> [Int] -> Int
    count _ [] = 0
    count number xs
      | head xs == number = 1 + count number (tail xs)
      | otherwise = count number (tail xs)

    withCount :: [Int] -> [(Int, Int)]
    withCount xs = zip xs . map (`count` xs) $ numbers

    sortedByCount :: [(Int, Int)] -> [(Int, Int)]
    sortedByCount = sortBy compareCount

    compareCount (_, countA) (_, countB) = compare countA countB

    toValue (value, _) = value
    toCount (_, count) = count
