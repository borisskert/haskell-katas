module Count1 where

-- https://www.codewars.com/kata/56311e4fdd811616810000ce/train/haskell

import Data.Char (digitToInt)

countSpecDigits :: [Int] -> [Int] -> [(Int,Int)]
countSpecDigits xs = map (\d -> (d, toCount d))
  where
    digits = concatMap toDigits xs :: [Int]

    toCount :: Int -> Int
    toCount d = length . filter (== d) $ digits


toDigits :: Int -> [Int]
toDigits = map digitToInt . show . abs
