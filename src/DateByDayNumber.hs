module DateByDayNumber (getDay) where

--  https://www.codewars.com/kata/602afedfd4a64d0008eb4e6e/train/haskell

import Data.Time (addDays, defaultTimeLocale, formatTime, fromGregorian, toGregorian)
import Text.Printf (printf)

getDay :: Int -> Bool -> String
getDay n isLeapYear
  | isLeapYear = toWeekday 2000
  | otherwise = toWeekday 2001
  where
    toWeekday :: Integer -> String
    toWeekday year = printf "%s, %s" month (show date)
      where
        nthDay = addDays (toInteger (n - 1)) $ fromGregorian year 1 1
        (_, _, date) = toGregorian nthDay
        month = formatTime defaultTimeLocale "%B" nthDay
