module Codewars.G964.SharesPrice where

-- https://www.codewars.com/kata/5603a4dd3d96ef798f000068/train/haskell

import Text.Printf (printf)

sharePrice :: Double -> [Double] -> String
sharePrice invested changes = printf "%.2f" $ dailyMovements invested changes

dailyMovements :: Double -> [Double] -> Double
dailyMovements = foldl (\a c -> a * (100 + c) / 100)

round2 :: Double -> Double
round2 = (/ 10 ^ n) . fromInteger . round . (* 10.0 ^ n)
  where
    n = 2
