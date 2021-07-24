module Codewars.G964.Maxrot where

--  https://www.codewars.com/kata/56a4872cbb65f3a610000026/train/haskell

--best practice:
--maxRot :: Integer -> Integer
--maxRot = read . go . show
--  where go n@[_] = n
--        go n@(x1:x2:xs) = max n (x2:go (xs ++ [x1]))

import Data.Char (digitToInt, intToDigit)


maxRot :: Integer -> Integer
maxRot n = toNumber $ rotateShift $ toDigits n


rotateShift :: [Integer] -> [Integer]
rotateShift [] = []
rotateShift [x] = [x]
rotateShift xs = rotateFinish $ rotateShiftRecursively (xs, [], [])
  where
    rotateShiftRecursively :: ([Integer], [Integer], [Integer]) -> ([Integer], [Integer], [Integer])
    rotateShiftRecursively ([], leading, followers) = ([], leading, rotateShift followers)
    rotateShiftRecursively ([i], leading, followers) = ([], leading, rotateShift (i:followers))
    rotateShiftRecursively ((x:others), leading, followers)
      | x > head others = (x:others, leading, followers)
      | x == head others && x >= head (tail others) && x >= head (tail (tail others)) = (x:others, leading, followers)
      | otherwise = rotateShiftRecursively (tail others, leading ++ [head others], followers ++ [x])
    rotateFinish :: ([Integer], [Integer], [Integer]) -> [Integer]
    rotateFinish (numbers, leading, followers) = leading ++ numbers ++ followers


toDigits :: Integer -> [Integer]
toDigits x = map toInteger $ map digitToInt $ show x


toNumber :: [Integer] -> Integer
toNumber = read . map intToDigit . map fromInteger
