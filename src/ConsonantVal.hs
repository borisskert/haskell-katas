module ConsonantVal (solve) where

-- https://www.codewars.com/kata/59c633e7dcc4053512000073/train/haskell/

import Data.Char (ord)
import Data.List (groupBy)

solve :: String -> Int
solve =
  maximum
    . map (sum . map valueOf)
    . filter (not . isVocal . head)
    . groupBy (\a b -> isVocal a == isVocal b)

isVocal :: Char -> Bool
isVocal = (`elem` "aeiouAEIOU")

valueOf :: Char -> Int
valueOf c = ord c - offset
  where
    offset = ord 'a' - 1

-- Again what learned:
-- import Data.List.Split (splitOneOf)
-- splitOneOf "aeiou" "bcadfegh"
-- --> ["bc","df","gh"]
