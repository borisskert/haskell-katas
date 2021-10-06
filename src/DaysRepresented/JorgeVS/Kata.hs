module DaysRepresented.JorgeVS.Kata where

-- https://www.codewars.com/kata/58e93b4706db4d24ee000096/train/haskell

import Data.List (nub)


daysRepresented :: [(Int, Int)] -> Int
daysRepresented = length . nub . concatMap (\(start, end) -> [start .. end])
