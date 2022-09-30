module SortingByBits (sortByBit) where

--  https://www.codewars.com/kata/59fa8e2646d8433ee200003f/train/haskell

import Data.Bits (popCount)
import Data.List (sortBy)
import Data.Word (Word32)

sortByBit :: [Word32] -> [Word32]
sortByBit = sortBy compareBits

compareBits :: Word32 -> Word32 -> Ordering
compareBits a b
  | popCountA == popCountB = compare a b
  | otherwise = compare popCountA popCountB
  where
    popCountA = popCount a
    popCountB = popCount b
