module ElevatorDistance (elevatorDistance) where

-- https://www.codewars.com/kata/59f061773e532d0c87000d16/train/haskell

import Data.List.Split (divvy)

elevatorDistance :: [Int] -> Int
elevatorDistance = sum . map (\[a, b] -> abs (a - b)) . divvy 2 1
