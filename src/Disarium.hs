module Disarium where

--  https://www.codewars.com/kata/5a53a17bfd56cb9c14000003/train/haskell

import Data.Char (digitToInt)


disariumNumber :: Int -> String
disariumNumber n
  | n == disariumSum = "Disarium !!"
  | otherwise        = "Not !!"
  where
    toDigits = map digitToInt . show :: Int -> [Int]
    digits = toDigits n :: [Int]
    withIndices = zip [1..] digits :: [(Int, Int)] -- better practice: use zipWith instead
    toDisarium (index, digit) = digit ^ index :: Int
    disariumSum = sum $ map toDisarium $ withIndices :: Int
