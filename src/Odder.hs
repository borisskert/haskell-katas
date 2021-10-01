module Odder ( oddOne ) where

-- https://www.codewars.com/kata/5983cba828b2f1fd55000114/train/haskell

-- best practice:
-- import Data.List (findIndex)
-- import Data.Maybe (fromMaybe)

-- oddOne :: [Int] -> Int
-- oddOne = fromMaybe (-1) . findIndex odd


oddOne :: [Int] -> Int
oddOne xs
  | null odds = -1
  | otherwise = fst . head $ odds
  where
    odds = filter (odd . snd) . zip [0..] $ xs :: [(Int, Int)]
