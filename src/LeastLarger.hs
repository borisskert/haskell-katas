module LeastLarger (leastLarger) where

-- https://www.codewars.com/kata/5f8341f6d030dc002a69d7e4/train/haskell

import Data.List (sortBy, nubBy)
import Data.List.Split (splitWhen)
import Data.Maybe (isJust, fromJust)


leastLarger :: [Int] -> Int -> Maybe Int
leastLarger xs index
  | isJust candidate = Just . fst . fromJust $ candidate
  | otherwise = Nothing
  where
    value = xs !! index :: Int
    groups = splitWhen (\(_, x) -> x == value) . sortBy (\(_, x) (_, y) -> compare x y) . nubBy (\(_, x) (_, y) -> x == y) . zip [0..] $ xs :: [[(Int, Int)]]
    candidate :: Maybe (Int, Int)
    candidate
      | null lastGroup = Nothing
      | otherwise = Just . head $ lastGroup
      where
        lastGroup = last groups :: [(Int, Int)]
