module WordToInitialNumber (convert) where

-- https://www.codewars.com/kata/5bb148b840196d1be50000b1/train/haskell

import Data.Char (toLower)
import Data.List (nub)
import Data.Maybe (mapMaybe)

convert :: String -> Int
convert "" = 0
convert xs = digitsToInt . mapMaybe (`lookup` table) $ word
  where
    word = map toLower xs
    letters = nub word
    values = [1, 0] ++ [2 ..]
    table = zip letters values

digitsToInt :: [Int] -> Int
digitsToInt = read . concatMap show
