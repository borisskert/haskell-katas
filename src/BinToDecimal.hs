module BinToDecimal where

--  https://www.codewars.com/kata/57a5c31ce298a7e6b7000334/train/haskell

import Data.Char (digitToInt)


binToDec :: String -> Int
binToDec "0" = 0
binToDec "1" = 1
binToDec bin = 2 * binToDec (init bin) + digitToInt (last bin)
