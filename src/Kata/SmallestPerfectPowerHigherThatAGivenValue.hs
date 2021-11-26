module Kata.SmallestPerfectPowerHigherThatAGivenValue where

-- https://www.codewars.com/kata/56ba65c6a15703ac7e002075/train/haskell

findNextPower :: Integer -> Integer -> Integer
findNextPower n i = head . dropWhile (<= n) . map (^ i) $ [2..]
