module RemoveDups where 

-- https://www.codewars.com/kata/5ba38ba180824a86850000f7/train/haskell

import Data.List (nub)


solve :: [Int] -> [Int]
solve = reverse . nub . reverse
