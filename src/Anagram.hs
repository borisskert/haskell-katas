module Anagram where

--  https://www.codewars.com/kata/523a86aa4230ebb5420001e1/train/haskell

import Data.List (sort)

anagrams :: String -> [String] -> [String]
anagrams w = filter (`areAnagrams` w')
  where
    w' = sort w

areAnagrams :: String -> String -> Bool
areAnagrams a b = sort a == sort b
