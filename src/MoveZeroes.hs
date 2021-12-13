module MoveZeroes where

-- https://www.codewars.com/kata/55c098aa8468f3b9030000f1/train/haskell

import Data.List (sortBy)

move_zeroes :: Bool -> [Int] -> [Int]
move_zeroes False = sortBy moveL
move_zeroes True = sortBy moveR

moveL :: Int -> Int -> Ordering
moveL a b
  | a == b = EQ
  | a == 0 = LT
  | b == 0 = GT
  | otherwise = EQ

moveR :: Int -> Int -> Ordering
moveR a b
  | a == b = EQ
  | a == 0 = GT
  | b == 0 = LT
  | otherwise = EQ
