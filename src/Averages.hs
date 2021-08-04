module Averages where

-- https://www.codewars.com/kata/57d2807295497e652b000139/train/haskell

averages :: Maybe [Double] -> [Double]
averages Nothing = []
averages (Just xs) = avg xs
  where
    avg :: [Double] -> [Double]
    avg [] = []
    avg [_] = []
    avg (x1:x2:others) = ((x1 + x2) / 2) : avg (x2:others)
