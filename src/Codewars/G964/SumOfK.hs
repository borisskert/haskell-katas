module Codewars.G964.SumOfK (chooseBestSum) where

-- https://www.codewars.com/kata/55e7280b40e1c4a06d0000aa/train/haskell

import Data.List (sortOn)
import Data.Ord (Down (Down))

chooseBestSum :: Int -> Int -> [Int] -> Maybe Int
chooseBestSum t k =
  headMay
    . dropWhile (> t)
    . sortOn Down
    . map sum
    . subsequences k

-- https://stackoverflow.com/a/21288092/13213024
subsequences :: Int -> [a] -> [[a]]
subsequences n xs
  | n > length xs = []
  | otherwise = subsequencesBySize xs !! (count - n)
  where
    count = length xs
    subsequencesBySize [] = [[[]]]
    subsequencesBySize (x : xs) = zipWith (++) ([] : next) (map (map (x :)) next ++ [[]])
      where
        next = subsequencesBySize xs

headMay :: [a] -> Maybe a
headMay [] = Nothing
headMay (x : _) = Just x
