module SwapDict where

-- https://www.codewars.com/kata/5a21e090f28b824def00013c/train/haskell

import Data.List (groupBy, sortBy)
import Data.Map (Map, fromList, toList)

swapDict :: Map String String -> Map String [String]
swapDict =
  fromList
    . map (foldl (\(_, values) (key, value) -> (key, values ++ [value])) ("", []))
    . groupBy (\(key1, _) (key2, _) -> key1 == key2)
    . sortBy (\(key1, _) (key2, _) -> compare key1 key2)
    . map (\(key, value) -> (value, key))
    . toList


-- best practice (by tbsklg):
-- import Data.Map (Map, fromListWith, toList)

-- swapDict :: Map String String -> Map String [String]
-- swapDict m = fromListWith (++) [(v, [k]) | (k, v) <- toList m]
