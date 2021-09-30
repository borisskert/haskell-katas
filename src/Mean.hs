module Mean (mean) where

-- https://www.codewars.com/kata/56f7493f5d7c12d1690000b6/train/haskell

import Data.Char (isDigit, digitToInt, isLetter)


mean :: [Char] -> (Double, String)
mean lst = (avg, letters)
  where
    numbers = map (fromIntegral . digitToInt) . filter isDigit $ lst :: [Double]
    count = fromIntegral . length $ numbers :: Double
    avg = sum numbers / count :: Double
    letters = filter isLetter lst :: [Char]
