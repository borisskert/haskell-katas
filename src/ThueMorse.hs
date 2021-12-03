module ThueMorse where

import Data.List.Split (divvy)

-- https://www.codewars.com/kata/589a9792ea93aae1bf00001c/train/haskell

isThueMorse :: [Int] -> Bool
isThueMorse xs = (== xs) . take (length xs) $ morse

morse :: [Int]
morse = 0 : make [0, 1]
  where
    make :: [Int] -> [Int]
    make x = out ++ make next
      where
        half = (`div` 2) . length $ x
        out = last . divvy half half $ x :: [Int]
        next = x ++ complement x

    complement :: [Int] -> [Int]
    complement [] = []
    complement (x : xs)
      | x == 1 = 0 : rest
      | otherwise = 1 : rest
      where
        rest = complement xs
