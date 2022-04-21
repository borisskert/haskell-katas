module High.JorgeVS.Kata where

-- https://www.codewars.com/kata/57eb8fcdf670e99d9b000272/train/haskell

import Data.Char (ord, toUpper)
import Data.List (maximumBy, sortOn)

high :: String -> String
high = snd . maximumBy compareWords . zip [0 ..] . words

compareWords :: (Int, String) -> (Int, String) -> Ordering
compareWords (indexA, wordA) (indexB, wordB)
  | scoreA == scoreB = compare indexB indexA
  | otherwise = compare scoreA scoreB
  where
    scoreA = score wordA
    scoreB = score wordB

score :: String -> Int
score = sum . map ((+ negate offset) . ord . toUpper)
  where
    offset = (+ negate 1) . ord $ 'A'
