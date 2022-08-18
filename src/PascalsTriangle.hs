module PascalsTriangle (pascal) where

-- https://www.codewars.com/kata/52945ce49bb38560fe0001d9/train/haskell

import Data.List.Split (divvy)

pascal :: Int -> [[Integer]]
pascal n = take n rows
  where
    rows = [1] : iterate nextRow [1, 1] :: [[Integer]]

nextRow :: [Integer] -> [Integer]
nextRow = (++ [1]) . (1 :) . map sum . divvy 2 1
