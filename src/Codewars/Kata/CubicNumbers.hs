module Codewars.Kata.CubicNumbers where

-- https://www.codewars.com/kata/55031bba8cba40ada90011c4/train/haskell

import Codewars.Kata.CubicNumbers.Types
import Data.Char (digitToInt, isDigit)
import Data.List (groupBy)
import Data.List.Split (chunksOf)
import Data.Maybe (mapMaybe)

sumOfCubes :: String -> Maybe Lucky
sumOfCubes str
  | null cubes = Nothing
  | otherwise = Just . Lucky cubes $ sum cubes
  where
    digitGroups = filter (isDigit . head) . groupOn isDigit $ str
    cubes = mapMaybe toCube . concatMap (chunksOf 3) $ digitGroups

groupOn :: (Eq b) => (a -> b) -> [a] -> [[a]]
groupOn get = groupBy (\a b -> get a == get b)

toCube :: [Char] -> Maybe Int
toCube cs
  | cubic == n = Just n
  | otherwise = Nothing
  where
    n = read cs :: Int
    cubic = sum . map ((^ 3) . digitToInt) $ cs :: Int
