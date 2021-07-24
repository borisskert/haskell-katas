module NumbersInOrder (isAscOrder) where

--  https://www.codewars.com/kata/56b7f2f3f18876033f000307/train/haskell

import Data.List (sort)


isAscOrder :: [Int] -> Bool
isAscOrder numbers = sort numbers == numbers
