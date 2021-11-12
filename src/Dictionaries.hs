module Dictionaries where

-- https://www.codewars.com/kata/53da6a7e112bd15cbc000012/train/haskell

import Data.List (sortOn)
import Data.Ord (Down (Down))

sortDict :: (Ord v) => [(k, v)] -> [(k, v)]
sortDict = sortOn (Down . snd)
