module BinaryRepresentation (showBits) where

import Data.Int (Int32)

-- https://www.codewars.com/kata/5a5f3034cadebf76db000023/train/haskell

showBits :: Int32 -> [Int32]
showBits n
  | n < 0 = complement $ pad ++ bits
  | otherwise = pad ++ bits
  where
    bits
      | n < 0 = intToBin . abs . (+ 1) $ n
      | otherwise = intToBin n

    pad = replicate (32 - length bits) 0

complement :: [Int32] -> [Int32]
complement [] = []
complement (x:xs)
  | x == 1 = 0 : complement xs
  | otherwise = 1 : complement xs

intToBin :: Int32 -> [Int32]
intToBin n
  | div2 > 0 = intToBin div2 ++ [rest]
  | otherwise = [rest]
  where
    div2 = n `div` 2
    rest = n `mod` 2
