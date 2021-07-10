module Haskell.Codewars.ParseNiceInt where

-- https://www.codewars.com/kata/557cd6882bfa3c8a9f0000c1/train/haskell

import Data.Char (digitToInt)

getAge :: String -> Int
getAge (age:rest) = digitToInt age
