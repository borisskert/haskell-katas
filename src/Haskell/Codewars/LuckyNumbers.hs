module Haskell.Codewars.LuckyNumbers where

-- https://www.codewars.com/kata/580435ab150cca22650001fb/train/haskell

filterLucky :: [Int] -> [Int]
filterLucky = map read . filter (elem '7') . map show
