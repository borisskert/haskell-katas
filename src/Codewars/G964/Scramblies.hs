module Codewars.G964.Scramblies where

--  https://www.codewars.com/kata/55c04b4cc56a697bb0000048/train/haskell

import Data.Map (Map, elems, empty, insertWith)

type Counter = Map Char Int

increment :: Counter -> Char -> Counter
increment counter c = insertWith (+) c 1 counter

decrement :: Counter -> Char -> Counter
decrement counter c = insertWith (+) c (-1) counter

scramble :: [Char] -> [Char] -> Bool
scramble xs = all (>= 0) . elems . foldl decrement counts
  where
    counts = foldl increment empty xs
