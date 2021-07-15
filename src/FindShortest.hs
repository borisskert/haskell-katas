module FindShortest where

--  https://www.codewars.com/kata/57cebe1dc6fdc20c57000ac9/train/haskell

--best practice:
--find_shortest :: String -> Integer
--find_shortest = fromIntegral . minimum . map length . words 

import Data.List (elemIndex, sortBy)


find_shortest :: String -> Integer
find_shortest text = lengthOf $ head sorted
  where
    toWords = words text :: [String]
    withIndices = zip [1..] toWords :: [(Int, String)]
    withLength = map (\(index, word) -> (length word, index, word)) withIndices :: [(Int, Int, String)]
    sorted = sortBy compareLength withLength :: [(Int, Int, String)]


compareLength (lengthA, _, _) (lengthB, _, _) = compare lengthA lengthB


lengthOf :: (Int, Int, String) -> Integer
lengthOf (length, _, _) = toInteger length
