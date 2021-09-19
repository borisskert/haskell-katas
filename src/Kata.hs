module Kata (product') where

-- https://www.codewars.com/kata/57fb142297e0860073000064/train/haskell

product' :: String -> Int
product' s = exclamationMarks * questionMarks
  where
    exclamationMarks = length . filter (== '!') $ s :: Int
    questionMarks = length . filter (== '?') $ s :: Int
