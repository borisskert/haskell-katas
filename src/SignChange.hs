module SignChange (count) where

-- https://www.codewars.com/kata/5bbb8887484fcd36fb0020ca/train/haskell

import Data.List (group)


count :: (Num a, Ord a) => [a] -> Int
count [] = 0
count xs = subtract 1 . length . group . map ((>= 0) . signum) $ xs
