module Codewars.Kata.Comparator where

-- https://www.codewars.com/kata/561046a9f629a8aac000001d/train/haskell

matchList :: Eq a => [a] -> [a] -> Int
matchList xs ys = length . filter (`elem` ys) $ xs
