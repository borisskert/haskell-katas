module DivisibleByThree where

-- https://www.codewars.com/kata/59f7fc109f0e86d705000043/train/haskell

import Data.Char (digitToInt)


divisibleByThree :: String -> Bool
divisibleByThree xs = sum (map digitToInt xs) `mod` 3 == 0
