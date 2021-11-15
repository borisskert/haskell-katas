module FailedFilter (filterNumbers) where

-- https://www.codewars.com/kata/55c606e6babfc5b2c500007c/train/haskell

import Data.Char (isNumber)

filterNumbers :: String -> String
filterNumbers = filter (not . isNumber)
