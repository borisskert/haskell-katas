module ExtendedWeekends where

-- https://www.codewars.com/kata/5be7f613f59e0355ee00000f/train/haskell

import Data.Time (DayOfWeek (Friday), fromGregorian)
import Data.Time.Calendar (dayOfWeek)

solve :: Integer -> Integer -> (String, String, Int)
solve startYear endYear = (head months, last months, length months)
  where
    months =
      map show
        . filter has31Days
        . filter startWithFriday
        . takeWhile (\date -> year date <= endYear)
        . iterate nextMonth
        . fromYear
        $ startYear

fromYear :: Integer -> Date
fromYear year = Date {year = year, month = 1, day = 1}

startWithFriday :: Date -> Bool
startWithFriday date = (== Friday) . dayOfWeek $ fromGregorian (year date) (month date) (day date)

has31Days :: Date -> Bool
has31Days Date {year = _, month = 1, day = _} = True
has31Days Date {year = _, month = 2, day = _} = False
has31Days Date {year = _, month = 3, day = _} = True
has31Days Date {year = _, month = 4, day = _} = False
has31Days Date {year = _, month = 5, day = _} = True
has31Days Date {year = _, month = 6, day = _} = False
has31Days Date {year = _, month = 7, day = _} = True
has31Days Date {year = _, month = 8, day = _} = True
has31Days Date {year = _, month = 9, day = _} = False
has31Days Date {year = _, month = 10, day = _} = True
has31Days Date {year = _, month = 11, day = _} = False
has31Days Date {year = _, month = 12, day = _} = True

nextMonth :: Date -> Date
nextMonth date
  | month date == 12 = Date {year = year date + 1, month = 1, day = day date}
  | otherwise = Date {year = year date, month = month date + 1, day = day date}

data Date = Date {year :: Integer, month :: Int, day :: Int}

instance Show Date where
  show Date {year = _, month = 1, day = _} = "Jan"
  show Date {year = _, month = 2, day = _} = "Feb"
  show Date {year = _, month = 3, day = _} = "Mar"
  show Date {year = _, month = 4, day = _} = "Apr"
  show Date {year = _, month = 5, day = _} = "May"
  show Date {year = _, month = 6, day = _} = "Jun"
  show Date {year = _, month = 7, day = _} = "Jul"
  show Date {year = _, month = 8, day = _} = "Aug"
  show Date {year = _, month = 9, day = _} = "Sep"
  show Date {year = _, month = 10, day = _} = "Oct"
  show Date {year = _, month = 11, day = _} = "Nov"
  show Date {year = _, month = 12, day = _} = "Dec"
