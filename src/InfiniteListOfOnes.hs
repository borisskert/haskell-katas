module InfiniteListOfOnes where

-- https://www.codewars.com/kata/57d0695142e44e65e8001346/train/haskell

import Prelude hiding (cycle, repeat, replicate, take)

getInfiniteListOfOnes :: [Int]
getInfiniteListOfOnes = [1, 1 ..]
