module TheLatestClock (latestClock) where

-- https://www.codewars.com/kata/58925dcb71f43f30cd00005f/train/haskell

import Data.List (permutations)
import Data.Maybe (mapMaybe)
import Data.Time (TimeOfDay, defaultTimeLocale, formatTime)
import Data.Time.LocalTime (makeTimeOfDayValid)

latestClock :: Int -> Int -> Int -> Int -> String
latestClock a b c d =
  formatTimeOfDay
    . maximum
    . mapMaybe parseTimeOfDay
    . permutations
    $ [a, b, c, d]

parseTimeOfDay :: [Int] -> Maybe TimeOfDay
parseTimeOfDay (a : b : c : d : _) = makeTimeOfDayValid hours minutes 0
  where
    hours = read $ show a ++ show b
    minutes = read $ show c ++ show d

formatTimeOfDay :: TimeOfDay -> String
formatTimeOfDay = formatTime defaultTimeLocale "%H:%M"
