module Hamming (decode, encode) where

--  https://www.codewars.com/kata/5ef9ca8b76be6d001d5e1c3e/train/haskell

import Data.Char (chr, digitToInt, ord)
import Data.List.Split (divvy)

decode, encode :: [Char] -> [Char]
encode = concatMap (concatMap (\c -> [c, c, c]) . (decToByte . ord))
decode = map (chr . (binToDec . (map tripleToBit . divvy 3 3))) . divvy 24 24

tripleToBit :: [Char] -> Char
tripleToBit [_, '0', '0'] = '0'
tripleToBit ['0', _, '0'] = '0'
tripleToBit ['0', '0', _] = '0'
tripleToBit [_, '1', '1'] = '1'
tripleToBit ['1', _, '1'] = '1'
tripleToBit ['1', '1', _] = '1'
tripleToBit _ = error "illegal triple"

decToByte :: Int -> [Char]
decToByte n = pad ++ bin
  where
    bin = decToBin n
    size = length bin
    pad = replicate (8 - size) '0' :: [Char]

decToBin :: Int -> [Char]
decToBin n
  | div2 > 0 = decToBin div2 ++ show rest
  | otherwise = show rest
  where
    (div2, rest) = n `divMod` 2

binToDec :: String -> Int
binToDec "0" = 0
binToDec "1" = 1
binToDec bin = 2 * binToDec (init bin) + digitToInt (last bin)
