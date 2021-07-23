module Min where

--  https://www.codewars.com/kata/5ac6932b2f317b96980000ca/train/haskell

import Data.List (nub, sort)


minValue :: [Int] -> Int
minValue = read . concat . map show . sort . nub
