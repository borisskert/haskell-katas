module Uniq (uniq) where

-- https://www.codewars.com/kata/52249faee9abb9cefa0001ee/train/haskell

import Data.List (group)

uniq :: (Eq a) => [a] -> [a]
uniq = map head . group
