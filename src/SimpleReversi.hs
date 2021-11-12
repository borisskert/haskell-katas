module SimpleReversi where

-- https://www.codewars.com/kata/5b93636ba28ce032600000b7/train/haskell

import Data.List (elemIndex)
import Data.Maybe (fromJust)

solve :: Int -> Int -> Int
solve n k = fromJust . elemIndex k . rotate . reverse $ balls
  where
    balls = [0 .. (n - 1)] :: [Int]

    rotate :: [Int] -> [Int]
    rotate [] = []
    rotate xs = head xs : (rotate . reverse . tail $ xs)
