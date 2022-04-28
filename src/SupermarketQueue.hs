module SupermarketQueue (queueTime) where

import Data.List (sortOn)

-- https://www.codewars.com/kata/57b06f90e298a7b53d000a86/train/haskell

queueTime :: [Int] -> Int -> Int
queueTime queue tills
  | null queue = 0
  | otherwise = totalTime . foldl append empty $ queue
  where
    append :: MultiQueue -> Int -> MultiQueue
    append [] x = [create x]
    append mQueue@(m : mx) x
      | length mQueue < tills = sortOn fst . (mQueue ++) $ [create x]
      | otherwise = sortOn fst . (extend x m :) $ mx

type Queue = (Int, [Int])

create :: Int -> Queue
create x = (x, [x])

extend :: Int -> Queue -> Queue
extend x (total, queue) = (total + x, queue ++ [x])

type MultiQueue = [Queue]

empty :: MultiQueue
empty = []

totalTime :: MultiQueue -> Int
totalTime = maximum . map fst
