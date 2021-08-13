module Kata where

-- https://www.codewars.com/kata/59cfc09a86a6fdf6df0000f1/train/haskell

import Data.Char (toUpper)


capitalize :: String -> [Int] -> String
capitalize = foldl capitalizeAt


capitalizeAt :: String -> Int-> String
capitalizeAt [] _ = []
capitalizeAt text 0 = toUpper (head text) : tail text
capitalizeAt text index = head text : capitalizeAt (tail text) (index - 1)
