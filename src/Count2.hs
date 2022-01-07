module Count2 where

-- https://www.codewars.com/kata/557cffec8c3e8e55cc00010f/train/haskell

countZeros :: Int -> Int
countZeros a = length . filter (== '0') . concatMap show $ [1 .. a]
