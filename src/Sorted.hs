module Sorted where

-- https://www.codewars.com/kata/52705ed65de62b733f000064/train/haskell

import Data.List (sortBy)

sortList :: Ord b => (a -> b) -> [a] -> [a]
sortList f = sortBy (\x y -> compare (f x) (f y))


-- best practice:
-- sortList = sortBy . comparing
