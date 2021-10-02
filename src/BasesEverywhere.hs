module BasesEverywhere (baseFinder) where

-- https://www.codewars.com/kata/5f47e79e18330d001a195b55/train/haskell

import Data.List (nub)
import Data.Char (digitToInt)


baseFinder :: [String] -> Int
baseFinder = (+ 1). maximum . map digitToInt . nub . concat
