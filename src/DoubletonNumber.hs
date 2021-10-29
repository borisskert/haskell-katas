module DoubletonNumber (doubleton) where

-- https://www.codewars.com/kata/604287495a72ae00131685c7/train/haskell

import Data.List (nub)

doubleton :: Int -> Int
doubleton n = head . filter isDoubleton $ [(n + 1) ..]

isDoubleton :: Int -> Bool
isDoubleton = (== 2) . length . nub . show
