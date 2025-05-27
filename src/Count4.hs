module Count4 (count) where

-- https://www.codewars.com/kata/52efefcbcdf57161d4000091/train/haskell

import qualified Data.Map as Map

count :: String -> [(Char, Int)]
count = Map.toList . go Map.empty

go :: Map.Map Char Int -> String -> Map.Map Char Int
go = foldl (flip inc)

inc :: Char -> Map.Map Char Int -> Map.Map Char Int
inc = Map.alter (Just . maybe 1 (+1))
