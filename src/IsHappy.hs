module IsHappy (isHappy) where

-- https://www.codewars.com/kata/5464cbfb1e0c08e9b3000b3e/train/haskell

import Data.Set (Set, empty, member, insert)

isHappy :: Integer -> Bool
isHappy = isHappy' empty

isHappy' :: Set Integer -> Integer -> Bool
isHappy' _ 1 = True
isHappy' found i
  | member i found = False
  | otherwise = isHappy' (insert i found) (next i)

next :: Integer -> Integer
next = sum . map (^ 2) . toDigits

toDigits :: Integer -> [Integer]
toDigits i
  | i < 10 = [i]
  | otherwise = toDigits nextI ++ [digit]
  where
    (nextI, digit) = i `divMod` 10
