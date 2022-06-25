module Codewars.G964.Rank (rank) where

--  https://www.codewars.com/kata/5616868c81a0f281e500005c/train/haskell

import Data.Char (ord, toLower)
import Data.List (sortBy)
import Data.List.Split (splitOn)

rank :: String -> [Int] -> Int -> [Char]
rank "" _ _ = "No participants"
rank st we n
  | length names < n = "Not enough participants"
  | otherwise = snd $ names !! (n - 1)
  where
    names = sortBy ordering . zip we . splitOn "," $ st :: [(Int, String)]

ordering :: (Int, String) -> (Int, String) -> Ordering
ordering (weightA, nameA) (weightB, nameB)
  | somA == somB = compare nameA nameB
  | otherwise = compare somB somA
  where
    somA = weightA * som nameA
    somB = weightB * som nameB

som :: String -> Int
som cs = (+ length cs) . sum . map ((+) offset . ord . toLower) $ cs
  where
    offset = 1 - ord 'a' :: Int
