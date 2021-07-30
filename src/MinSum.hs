module MinSum where

-- https://www.codewars.com/kata/5a523566b3bfa84c2e00010b/train/haskell

import Data.List (sort)


minSum :: [Integer] -> Integer
minSum [] = 0
minSum ns = headNs * lastNs + minSum nextNs
  where
    sortedNs = sort ns :: [Integer]
    headNs = head sortedNs :: Integer
    lastNs = last sortedNs :: Integer
    nextNs = init $ tail sortedNs :: [Integer]
