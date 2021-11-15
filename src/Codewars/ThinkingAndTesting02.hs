module Codewars.ThinkingAndTesting02 where

import Data.Char (chr, ord)
import Data.List.Split (divvy)

-- https://www.codewars.com/kata/56d9292cc11bcc3629000533/train/haskell

testit :: String -> String
testit s
  | even . length $ s = avgs
  | otherwise = avgs ++ [last s]
  where
    avgs = map avg . divvy 2 2 $ s

    avg :: String -> Char
    avg (left : right : _) = chr ((ord left + ord right) `div` 2)
