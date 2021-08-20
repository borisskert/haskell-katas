module NextHappyYear where

-- https://www.codewars.com/kata/5ae7e3f068e6445bc8000046/train/haskell

import Data.List (nub)


nextHappyYear :: Int -> Int
nextHappyYear year = until hasDistinctNumbers (+ 1) (year + 1)


hasDistinctNumbers :: Int -> Bool
hasDistinctNumbers = (== 4) . length . nub . show
