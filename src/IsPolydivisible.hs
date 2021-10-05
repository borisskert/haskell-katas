module IsPolydivisible (isPolydivisible) where

-- https://www.codewars.com/kata/5e4217e476126b000170489b/train/haskell

import Data.Char (digitToInt)


isPolydivisible :: Int -> Bool
isPolydivisible x = (== lengthOf x) . length . filter isDivisible . map subNum $ [1..(lengthOf x)]
  where
    subNum i = fromDigits . prefix i . toDigits $ x :: Int
    lengthOf = length . show :: Int -> Int
    isDivisible i = i `mod` lengthOf i == 0 :: Bool


toDigits :: Int -> [Int]
toDigits = map digitToInt . show


fromDigits :: [Int] -> Int
fromDigits [] = 0
fromDigits x = last x + 10 * fromDigits (init x)


sublist :: Int -> Int -> [a] -> [a]
sublist begin end = map snd . filter ((\x -> x >= begin && x < end) . fst) . zip [0..]


prefix :: Int -> [a] -> [a]
prefix = sublist 0
