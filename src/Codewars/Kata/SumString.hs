module Codewars.Kata.SumString where

-- https://www.codewars.com/kata/55da6c52a94744b379000036/train/haskell

import Data.Char (isDigit)
import Data.List.Split (splitWhen)

sumFromString :: String -> Integer
sumFromString = sum . map read . filter (not . null). splitWhen (not . isDigit)

-- better practise:
-- wordsBy
