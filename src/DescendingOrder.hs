module DescendingOrder where

--  https://www.codewars.com/kata/5467e4d82edf8bbf40000155/train/haskell

import Data.List (sort)
import Data.Char (digitToInt)

--best practice:
--descendingOrder :: Integer -> Integer
--descendingOrder = read . reverse . sort . show

descendingOrder :: Integer -> Integer
descendingOrder input = read concatenated
  where
    shown = show input :: String
    digits = map digitToInt $ shown :: [Int]
    sorted = reverse $ sort $ digits :: [Int]
    concatenated = concat $ map show $ sorted :: String
