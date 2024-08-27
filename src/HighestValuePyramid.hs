module HighestValuePyramid (pyramid) where

-- https://www.codewars.com/kata/66c79a67213a3a4e1486c364/train/haskell

import Data.List (nub, sortOn)
import Data.Maybe (fromJust, isNothing)
import qualified Data.Ord

pyramid :: [Int] -> Maybe Int
pyramid xs = go (makeGroups xs) 3

makeGroups :: (Ord a, Eq a, Show a) => [a] -> [(a, Int)]
makeGroups xs = (sortOn (Data.Ord.Down . fst) . map (\x -> (x, count x xs)) . nub) xs

count :: (Eq a) => a -> [a] -> Int
count x = length . filter (== x)

go :: [(Int, Int)] -> Int -> Maybe Int
go _ 0 = Just 0
go [] _ = Nothing
go xs n
  | isNothing search = Nothing
  | isNothing next = Nothing
  | otherwise = Just . (found * n +) . fromJust $ next
  where
    search = maybeHead . filter (\(_, i) -> i >= n) $ xs
    found = fst . fromJust $ search
    xs' = filter (\(x, _) -> x /= found) xs
    next = go xs' (n - 1)

maybeHead :: [a] -> Maybe a
maybeHead [] = Nothing
maybeHead (x : _) = Just x
