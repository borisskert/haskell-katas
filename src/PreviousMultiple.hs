module PreviousMultiple where

-- https://www.codewars.com/kata/61123a6f2446320021db987d/train/haskell

import Data.Char (digitToInt)

prevMultOfThree :: Int -> Maybe Int
prevMultOfThree x
  | null ok = Nothing
  | otherwise = Just . digitsToInt . head $ ok
  where
    ok = filter (isMultipleOf 3) . inits . intToDigits $ x

isMultipleOf :: Int -> [Int] -> Bool
isMultipleOf i = (\x -> x `mod` i == 0) . digitsToInt

intToDigits :: Int -> [Int]
intToDigits = map digitToInt . show

digitsToInt :: [Int] -> Int
digitsToInt = read . concatMap show

inits :: [Int] -> [[Int]]
inits [] = []
inits xs = xs : inits (init xs)
