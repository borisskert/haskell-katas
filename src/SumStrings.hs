module SumStrings where 

-- https://www.codewars.com/kata/598f76a44f613e0e0b000026/train/haskell

import Data.List.Split (wordsBy)
import Data.Char (isDigit)

sumOfIntegersInString :: [Char] -> Int
sumOfIntegersInString = sum . map read . filter (not . null) . wordsBy (not . isDigit)
