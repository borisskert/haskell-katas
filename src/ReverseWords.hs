module ReverseWords where

-- https://www.codewars.com/kata/51c8991dee245d7ddf00000e/train/haskell

reverseWords :: String -> String
reverseWords = unwords . reverse . words
