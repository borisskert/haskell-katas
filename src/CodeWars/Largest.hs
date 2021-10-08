module CodeWars.Largest (largest) where

-- https://www.codewars.com/kata/53d32bea2f2a21f666000256/train/haskell

import Data.List (sort)


largest :: Ord a => Int -> [a] -> [a]
largest n = reverse . take n . reverse . sort
