module Codewars.Kata.Unique where

--  https://www.codewars.com/kata/55f81f9aa51f9b72a200002f/train/haskell

import Data.List (group, sort)

findUnique :: [Int] -> Int
findUnique = head . head . filter ((== 1) . length) . group . sort
