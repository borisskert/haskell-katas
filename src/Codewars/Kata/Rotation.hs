module Codewars.Kata.Rotation where

-- https://www.codewars.com/kata/5596f6e9529e9ab6fb000014/train/haskell

import Data.List (elemIndex, inits, tails)
import Data.Maybe (fromMaybe)

shiftedDiff :: String -> String -> Int
shiftedDiff a b
  | length a /= length b = -1
  | a == b = 0
  | otherwise = fromMaybe (-1) . elemIndex b . reverse . shifts $ a

shifts :: String -> [String]
shifts cs = map (uncurry (++)) $ zip (tails cs) (inits cs)
