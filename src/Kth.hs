module Kth where

import Prelude hiding ((!!))

-- https://www.codewars.com/kata/5416356b1b28a5e297000bc7/train/haskell

elementAt :: [a] -> Int -> a
elementAt (x : xs) i
  | i == 1 = x
  | otherwise = elementAt xs (i - 1)
