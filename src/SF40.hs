module SF40 where

-- https://www.codewars.com/kata/588817db5fb13af14a000020/train/haskell

import Data.Char (isLetter)
import Data.List.Split (wordsBy)

timedReading :: Int -> String -> Int
timedReading n =
  length
    . filter (<= n)
    . map length
    . filter (not . null)
    . map (filter isLetter)
    . wordsBy (not . isLetter)
