module Collatz (collatz) where

--  https://www.codewars.com/kata/5286b2e162056fd0cb000c20/train/haskell

import Data.List (intercalate)

collatz :: Int -> String
collatz = intercalate "->" . map show . takeWhile (> 0) . iterate next

next :: Int -> Int
next 1 = 0
next n
  | even n = n `div` 2
  | otherwise = 3 * n + 1
