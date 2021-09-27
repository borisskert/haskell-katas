module SF3 where

-- https://www.codewars.com/kata/588422ba4e8efb583d00007d/train/haskell

import Data.Char (digitToInt)


lateRide :: Int -> Int
lateRide x = sum (toDigits hours ++ toDigits minutes)
  where
    time = divMod x 60 :: (Int, Int)
    hours = fst time :: Int
    minutes = snd time :: Int


toDigits :: Int -> [Int]
toDigits = map digitToInt . show
