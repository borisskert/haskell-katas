module SequenceConvergence.Kata (convergence) where

-- https://www.codewars.com/kata/59971e64bfccc70748000068/train/haskell

import Data.Char (digitToInt)

convergence :: Int -> Int
convergence = find 0
  where
    find i x
      | isBaseElem x = i
      | otherwise = find (i + 1) (next x)

isBaseElem :: Int -> Bool
isBaseElem x = (== x) . last . takeWhile (<= x) $ base

base :: [Int]
base = create 1
  where
    create i = i : create (next i)

next :: Int -> Int
next n
  | n < 10 = 2 * n
  | otherwise = (+ n) . product . filter (> 0) . intToDigits $ n

intToDigits :: Int -> [Int]
intToDigits = map digitToInt . show
