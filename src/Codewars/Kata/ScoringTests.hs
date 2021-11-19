module Codewars.Kata.ScoringTests where

-- https://www.codewars.com/kata/55d2aee99f30dbbf8b000001/train/haskell

-- scoreTest :: (Integral a) => [a] -> a -> a -> a -> a
scoreTest answers correct omitted incorrect = correctPoints + omittedPoints - incorrectPoints
  where
    correctPoints = (* correct) . length . filter (== 0) $ answers
    omittedPoints = (* omitted) . length . filter (== 1) $ answers
    incorrectPoints = (* incorrect) . length . filter (== 2) $ answers
