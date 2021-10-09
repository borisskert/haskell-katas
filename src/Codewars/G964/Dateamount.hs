module Codewars.G964.Dateamount where

import Data.Time
import Data.Time.Format

-- https://www.codewars.com/kata/569218bc919ccba77000000b/train/haskell

dateNbDays :: Double -> Double -> Double -> String
dateNbDays a0 a p = show (calcDate start a0)
  where
    start = fromGregorian 2016 1 1 :: Day

    calcDate :: Day -> Double -> Day
    calcDate date money
      | money >= a = date
      | otherwise = calcDate (addDays 1 date) nextMoney
      where
        nextMoney = money + (money * (p / 36000)) :: Double
