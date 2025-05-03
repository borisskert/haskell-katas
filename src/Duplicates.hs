module Duplicates where

-- https://www.codewars.com/kata/6113c2dc3069b1001b8fdd05/train/haskell

import Data.List (group, sort)

countDuplicates :: [String] -> [Int] -> [Int] -> Int
countDuplicates names ages heights =
  sum
    . map (subtract 1)
    . filter (> 1)
    . map length
    . group
    . sort
    $ zip3 names ages heights
