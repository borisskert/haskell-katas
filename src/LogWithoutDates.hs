module LogWithoutDates (checkLogs) where

-- https://www.codewars.com/kata/64cac86333ab6a14f70c6fb6/train/haskell

import Data.List.Split (divvy)

checkLogs :: [String] -> Int
checkLogs [] = 0
checkLogs xs = (+ 1) . length . filter (\(a : b : _) -> a >= b) . divvy 2 1 $ xs
