module OddOrEven (oddOrEven) where

-- https://www.codewars.com/kata/619f200fd0ff91000eaf4a08/train/haskell

import Data.Bits (testBit)
import Preloaded (Parity (..))

oddOrEven :: Word -> Parity
oddOrEven x
  | even x && testBit x 1 = ODD
  | even x && (not . (`testBit` 1) $ x) = EVEN
  | odd x && testBit x 1 = EITHER
  | otherwise = EITHER
