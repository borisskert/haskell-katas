module PatternWave where

import Data.List (intercalate)

-- https://www.codewars.com/kata/56e67d6166d442121800074c/train/haskell

draw :: [Int] -> String
draw [] = []
draw xs = intercalate "\n" . map (`drawRow` xs) $ [size, size - 1 .. 1]
  where
    size = maximum xs

    drawRow :: Int -> [Int] -> String
    drawRow _ [] = []
    drawRow row (x : xs)
      | x < row = '□' : drawRow row xs
      | otherwise = '■' : drawRow row xs
