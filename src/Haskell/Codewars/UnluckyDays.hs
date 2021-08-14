module Haskell.Codewars.UnluckyDays where

--  https://www.codewars.com/kata/56eb0be52caf798c630013c0/train/haskell

--best practice?
--import Data.Time.Calendar
--import Data.Time.Calendar.WeekDate
--
--unluckyDays :: Integer -> Int
--unluckyDays year = length . filter (\(_,_,x) -> x == 5) . map (toWeekDate . (\x -> fromGregorian year x 13)) $ [1..12]


unluckyDays :: Integer -> Int
unluckyDays year
  | isLeapYear = toUnluckyDaysForLeapYear weekdayJanuaryFirst
  | otherwise  = toUnluckyDays weekdayJanuaryFirst
  where
    weekdayJanuaryFirst = (year + year `div `4 - year `div` 100 + year `div` 400) `mod` 7 :: Integer

    toUnluckyDays :: Integer -> Int
    toUnluckyDays 0 = 2
    toUnluckyDays 1 = 2
    toUnluckyDays 2 = 2
    toUnluckyDays 3 = 1
    toUnluckyDays 4 = 3
    toUnluckyDays 5 = 1
    toUnluckyDays 6 = 1

    toUnluckyDaysForLeapYear :: Integer -> Int
    toUnluckyDaysForLeapYear 0 = 1
    toUnluckyDaysForLeapYear 1 = 3
    toUnluckyDaysForLeapYear 2 = 2
    toUnluckyDaysForLeapYear 3 = 1
    toUnluckyDaysForLeapYear 4 = 2
    toUnluckyDaysForLeapYear 5 = 2
    toUnluckyDaysForLeapYear 6 = 1

    isLeapYear :: Bool
    isLeapYear = year `mod` 4 == 0 && not (year `mod` 100 == 0) || year `mod` 400 == 0
