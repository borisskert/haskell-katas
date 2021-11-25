module Codewars.Numbers1 where

-- https://www.codewars.com/kata/56a75b91688b49ad94000015/train/haskell

abundantNumber :: Int -> Bool
abundantNumber x = (> x) . sum . divisors $ x

divisors :: Int -> [Int]
divisors i = filter (\x -> i `mod` x == 0) [2 .. (i `div` 2)]
