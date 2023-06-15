module PermutePalindrome (permutePalindrome) where

-- https://www.codewars.com/kata/58ae6ae22c3aaafc58000079/train/haskell

import Data.List (nub)

permutePalindrome :: String -> Bool
permutePalindrome xs = (<= 1) . length . filter odd . map (countIn xs) $ letters
  where
    letters = nub xs

countIn :: (Eq a) => [a] -> a -> Int
countIn xs x = length . filter (== x) $ xs
