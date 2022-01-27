module SumOfMinimums (sumOfMinimums) where

-- https://www.codewars.com/kata/5d5ee4c35162d9001af7d699/train/haskell

sumOfMinimums :: (Num a, Ord a) => [[a]] -> a
sumOfMinimums = sum . map minimum
