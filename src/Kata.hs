module Kata where

-- https://www.codewars.com/kata/56eb16655250549e4b0013f4/train/haskell

import Data.List (sortOn)
import Data.Time (Day, DayOfWeek, fromGregorian)
import Data.Time.Calendar (dayOfWeek, isLeapYear)

mostFrequentDays :: Integer -> [String]
mostFrequentDays year =
  map show
    . sortOn fromEnum
    . map (toWeekday . (+ dayOffset))
    . take amountDays
    $ [0 .. 6]
  where
    dayOffset = fromEnum . dayOfWeek . januaryFst $ year :: Int
    amountDays
      | isLeapYear year = 2
      | otherwise = 1

toWeekday :: Int -> DayOfWeek
toWeekday = (toEnum :: Int -> DayOfWeek) . (`mod` 7)

januaryFst :: Integer -> Day
januaryFst year = fromGregorian year 1 1

-- Again what learned:
-- Use `isLeapYear` from `Data.Time.Calendar` module
-- (my old solution contained:)
--```
--isLeapYear :: Integer -> Bool
--isLeapYear year
--  | year `mod` 4 /= 0 = False
--  | year `mod` 400 == 0 = True
--  | year `mod` 100 == 0 = False
--  | otherwise = True
--```
