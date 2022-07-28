module Codewars.G964.Carboat (howmuch) where

--  https://www.codewars.com/kata/55b4d87a3766d9873a0000d4/train/haskell

import Text.Printf (printf)

howmuch :: Int -> Int -> [[String]]
howmuch m n = map format . dropWhile (< min) $ [37, (37 + 63) .. max]
  where
    min = minimum [m, n]
    max = maximum [m, n]

format :: Int -> [String]
format m = [printf "M: %d" m, printf "B: %d" b, printf "C: %d" c]
  where
    b = m `div` 7
    c = m `div` 9
