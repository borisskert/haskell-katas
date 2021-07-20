module HighAndLow (highAndLow) where

--  https://www.codewars.com/kata/554b4ac871d6813a03000035/train/haskell

import Data.List (sort)


highAndLow :: String -> String
highAndLow input = unwords [(last sortedNumbers), (head sortedNumbers)]
  where
    sortedNumbers = map show $ sort $ map (read :: String -> Int) $ words input
