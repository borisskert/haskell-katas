module Codewars.G964.Stat where

--  https://www.codewars.com/kata/55b3425df71c1201a800009c/train/haskell

import Data.List (sort)
import Data.List.Split (splitOn)
import Data.Time (DiffTime, defaultTimeLocale, diffTimeToPicoseconds, formatTime, secondsToDiffTime)
import Text.Printf (printf)

stat :: String -> String
stat "" = ""
stat strg = printf "Range: %s Average: %s Median: %s" range' average' median'
  where
    results = map readDiffTime . splitOn ", " $ strg
    range' = showDiffTime . range $ results
    average' = showDiffTime . average $ results
    median' = showDiffTime . median $ results

range :: [DiffTime] -> DiffTime
range xs = last sorted - head sorted
  where
    sorted = sort xs

average :: [DiffTime] -> DiffTime
average xs = secondsToDiffTime . (`div` amount) $ seconds
  where
    seconds = diffTimeToSeconds . sum $ xs :: Integer
    amount = toInteger . length $ xs :: Integer

median :: [DiffTime] -> DiffTime
median xs
  | even size = average [sorted !! (mid - 1), sorted !! mid]
  | otherwise = sorted !! mid
  where
    size = length xs
    sorted = sort xs
    mid = (`div` 2) . length $ xs

readDiffTime :: String -> DiffTime
readDiffTime str = secondsToDiffTime seconds
  where
    (h : m : s : _) = splitOn "|" str
    hoursPart = read h
    minutesPart = read m
    secondsPart = read s
    seconds = secondsPart + (minutesPart + hoursPart * 60) * 60

showDiffTime :: DiffTime -> String
showDiffTime = formatTime defaultTimeLocale "%02h|%0M|%0S"

diffTimeToSeconds :: DiffTime -> Integer
diffTimeToSeconds = (`div` (10 ^ 12)) . diffTimeToPicoseconds
