module GettingMAD (gettingMAD) where

-- https://www.codewars.com/kata/593a061b942a27ac940000a7/train/haskell

import Data.List (sort)

gettingMAD :: [Int] -> Int
gettingMAD = minimum . map diff . tuples . sort

tuples :: [a] -> [(a, a)]
tuples [] = []
tuples [_] = []
tuples (x : y : xs) = (x, y) : tuples (y : xs)

diff :: (Num a) => (a, a) -> a
diff (x, y) = abs (x - y)
