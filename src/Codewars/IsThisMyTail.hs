module Codewars.IsThisMyTail where

-- https://www.codewars.com/kata/56f695399400f5d9ef000af5/train/haskell

correctTail :: String -> Char -> Bool
correctTail bod tail = last bod == tail
