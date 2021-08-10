module Kata where

-- https://www.codewars.com/kata/57a6633153ba33189e000074/train/haskell

import Data.List (nub)


orderedCount :: String -> [(Char, Int)]
orderedCount text = map (\x -> (x, count x text)) letters
  where
    letters = nub text


count :: Char -> String -> Int 
count _ [] = 0
count letter text
  | letter == head text = 1 + count letter (tail text)
  | otherwise = count letter (tail text)
