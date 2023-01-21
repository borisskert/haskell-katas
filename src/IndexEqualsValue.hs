module IndexEqualsValue (indexEqualsValue) where

import Data.Array.Unboxed

-- https://www.codewars.com/kata/5b7176768adeae9bc9000056/train/haskell

indexEqualsValue :: UArray Int Int -> Int
indexEqualsValue array
  | null found = - 1
  | otherwise = fst . head $ found
  where
    found = filter (uncurry (==)) . assocs $ array
