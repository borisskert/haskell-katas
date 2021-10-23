module GuardingTheAlgoLandia (findNeededGuards) where

-- https://www.codewars.com/kata/5d0d1c14c843440026d7958e/train/haskell

import Data.List.Split (splitWhen)

findNeededGuards :: [Bool] -> Int
findNeededGuards =
  sum
    . map (`div` 2)
    . filter (>= 2)
    . map length
    . splitWhen (== True)
