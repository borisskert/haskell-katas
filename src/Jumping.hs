module Jumping where

-- https://www.codewars.com/kata/5a54e796b3bfa8932c0000ed/train/haskell

import Data.Char (digitToInt)
import Data.List.Split (divvy)

jumpingNumber :: Int -> String
jumpingNumber number
  | isJumping digits = "Jumping!!"
  | otherwise = "Not!!"
  where
    digits = toDigits number

isJumping :: [Int] -> Bool
isJumping = all ((== True) . (\(a : b : _) -> abs (b - a) == 1)) . divvy 2 1

toDigits :: Int -> [Int]
toDigits = map digitToInt . show
