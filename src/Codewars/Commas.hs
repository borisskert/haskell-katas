module Codewars.Commas where

import Data.Char (digitToInt)
import Data.List (intercalate)

--  https://www.codewars.com/kata/5274e122fc75c0943d000148/train/haskell

groupByCommas :: Int -> String
groupByCommas =
  intercalate ","
    . map (concatMap show)
    . reverse
    . map reverse
    . divideIntoGroups 3
    . reverse
    . digits

digits :: Int -> [Int]
digits = map digitToInt . show

divideIntoGroups :: Int -> [a] -> [[a]]
divideIntoGroups size xs
  | length xs < size = [xs]
  | otherwise = take size xs : divideIntoGroups size (drop size xs)

-- Again what learned
-- Use `chunksOf` function:
-- groupByCommas = reverse . intercalate "," . chunksOf 3 . reverse . show
