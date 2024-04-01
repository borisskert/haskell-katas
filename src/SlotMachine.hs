module SlotMachine (slot) where

-- https://www.codewars.com/kata/57fb4b289610ce39f70000de/train/haskell

import Data.List (group, sortOn)
import Data.Ord (Down (..))

slot :: String -> Int
slot xs
  | groups == [5] = 1000
  | groups == [4, 1] = 800
  | groups == [3, 2] = 500
  | groups == [3, 1, 1] = 300
  | groups == [2, 2, 1] = 200
  | groups == [2, 1, 1, 1] = 100
  | otherwise = 0
  where
    groups = sortOn Down . map length . group $ xs
