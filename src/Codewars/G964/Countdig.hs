module Codewars.G964.Countdig where

--  https://www.codewars.com/kata/566fc12495810954b1000030/train/haskell

import Data.List (isInfixOf)
import Data.Char (intToDigit)


nbDig :: Int -> Int -> Int
nbDig n d = sum counted
  where
    dAsDigit = intToDigit d :: Char
    numbers = [0, 1 .. n] :: [Int]
    squares = map (^2) $ numbers :: [Int]
    shown = map show $ squares :: [String]
    counted = map (countOnes dAsDigit) $ shown :: [Int]


countOnes :: Char -> String -> Int
countOnes digit text = length . filter (== digit) $ text
