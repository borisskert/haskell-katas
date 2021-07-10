module HexToDecimal where

-- https://www.codewars.com/kata/57a4d500e298a7952100035d/train/haskell

--best practice:
--import Numeric(readHex)
--
--hexToDec :: String -> Int
--hexToDec = fst . head . readHex

import Data.Char (digitToInt)

hexToDec :: String -> Int
hexToDec ""  = 0
hexToDec hex = 16 * initHexAsDec + lastHexDigitAsDec
  where
    lastHexDigitAsDec = hexDigitToDec (last hex)
    initHexAsDec      = hexToDec (init hex)

hexDigitToDec :: Char -> Int
hexDigitToDec 'a' = 10
hexDigitToDec 'b' = 11
hexDigitToDec 'c' = 12
hexDigitToDec 'd' = 13
hexDigitToDec 'e' = 14
hexDigitToDec 'f' = 15
hexDigitToDec char = digitToInt char
