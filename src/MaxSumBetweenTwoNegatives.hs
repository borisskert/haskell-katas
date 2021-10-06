module MaxSumBetweenTwoNegatives (maxSumBetweenTwoNegatives) where

-- https://www.codewars.com/kata/6066ae080168ff0032c4107a/train/haskell

import Data.List.Split (splitWhen)


maxSumBetweenTwoNegatives :: [Int] -> Maybe Int
maxSumBetweenTwoNegatives [] = Nothing
maxSumBetweenTwoNegatives xs
  | null . toIntervals $ xs = Nothing
  | otherwise = Just . maximum . map sum . toIntervals $ xs
  where
    toIntervals :: [Int] -> [[Int]]
    toIntervals xs
      | length splittedBy < 2 = []
      | otherwise = tail . init $ splittedBy
      where
        splittedBy = splitWhen (< 0) xs :: [[Int]]
