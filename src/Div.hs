module Div where

-- https://www.codewars.com/kata/57eaec5608fed543d6000021/train/haskell

import Data.Char (digitToInt)


data Val c i = C c | I i deriving (Show)


divCon :: [Val Char Int] -> Int
divCon = sum . map toInt


toInt :: Val Char Int -> Int
toInt (C char) = (* (-1)) $ digitToInt char
toInt (I int) = int
