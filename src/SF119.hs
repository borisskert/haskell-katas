module SF119 where

-- https://www.codewars.com/kata/58c8a6daa7f31a623200016a/train/haskell

passTheBill :: Int -> Int -> Int -> Int
passTheBill total conservativeParty reformistParty
  | needed > independants = -1
  | needed <= 0 = 0
  | otherwise = needed
  where
    independants = total - conservativeParty - reformistParty :: Int
    needed = (+ (- conservativeParty)) . (+ 1) . (`div` 2) $ total :: Int
