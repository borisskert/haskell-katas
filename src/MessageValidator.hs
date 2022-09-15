module MessageValidator (isAValidMessage) where

--  https://www.codewars.com/kata/5fc7d2d2682ff3000e1a3fbc/train/haskell

import Data.Char (isDigit, isLetter)
import Data.List (groupBy)
import Data.List.Split (divvy)

isAValidMessage :: [Char] -> Bool
isAValidMessage message
  | even . length $ groups = all isValidBlock . divvy 2 2 $ groups
  | otherwise = False
  where
    groups = groupBy (\a b -> isLetter a == isLetter b) message :: [String]

isValidBlock :: [String] -> Bool
isValidBlock (count : text : _)
  | all isDigit count = read count == length text
  | otherwise = False
