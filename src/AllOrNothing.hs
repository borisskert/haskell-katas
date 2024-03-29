module AllOrNothing (possiblyPerfect) where

-- https://www.codewars.com/kata/65112af7056ad6004b5672f8/train/haskell

import Data.List (nub)

possiblyPerfect :: String -> String -> Bool
possiblyPerfect keys answers = (<= 1) . length . nub $ check keys answers

check :: String -> String -> [Bool]
check [] [] = []
check ('_' : keys) (_ : answers) = check keys answers
check (key : keys) (answer : answers) = (key == answer) : check keys answers
