module Codewars.G964.Sumdignth (sumDigNthTerm) where

-- https://www.codewars.com/kata/55ffb44050558fdb200000a4/train/haskell

sumDigNthTerm :: Int -> [Int] -> Int -> Int
sumDigNthTerm initval patternl nthterm = checksum . (!! (nthterm - 1)) $ mkSequence initval (cycle patternl)

mkSequence :: Int -> [Int] -> [Int]
mkSequence x (d : ds) = x : mkSequence (x + d) ds

checksum :: Int -> Int
checksum 0 = 0
checksum x = digit + checksum next
  where
    (next, digit) = x `divMod` 10
