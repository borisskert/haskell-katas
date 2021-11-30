module FruitNinjaI where

-- https://www.codewars.com/kata/57d60363a65454701d000e11/train/haskell

import Data.List.Split (divvy)
import Fruits (fruits)

cutFruits :: [String] -> [String]
cutFruits = concatMap (\x -> if x `elem` fruits then cut x else [x])

cut :: String -> [String]
cut str
  | even size = divvy half half str
  | otherwise = (head . divvy (half + 1) 1 $ str) : [last . divvy half 1 $ str]
  where
    size = length str :: Int
    half = (`div` 2) size :: Int
