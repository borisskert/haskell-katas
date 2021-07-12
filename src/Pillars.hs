module Pillars where

--  https://www.codewars.com/kata/5bb0c58f484fcd170700063d/train/haskell

pillars :: Int -> Int -> Int -> Int
pillars pillars distance width
  | pillars > 1 = pillarsWidth + distanceWidth
  | otherwise   = 0
  where
    pillarsWidth = (pillars - 2) * width
    distanceWidth = (pillars - 1) * distance * 100
