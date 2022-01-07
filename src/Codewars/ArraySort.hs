module Codewars.ArraySort where

-- https://www.codewars.com/kata/59dc8288fc3c49cc3f000039/train/haskell

import Data.List (sortOn)

sortArray :: [a] -> [Int] -> [a]
sortArray xs = map fst . sortOn snd . zip xs
