module Codewars.Kata.Partial where

-- https://www.codewars.com/kata/54b81566cd7f51408300022d/train/haskell

import Data.Char (toLower)


wordSearch :: String -> [String] -> Maybe [String]
wordSearch query seq
  | null containing = Nothing
  | otherwise = Just containing
  where
    containing = filter (contains (map toLower query) . map toLower) seq :: [String]


-- import Data.List (isInfixOf)
contains :: [Char] -> [Char] -> Bool
contains [] _ = True
contains _ [] = False
contains query seq
  | startsWith query seq = True
  | otherwise = contains query (tail seq)
  where
    startsWith :: [Char] -> [Char] -> Bool
    startsWith [] _ = True
    startsWith _ [] = False
    startsWith (q:qs) (x:xs)
      | q == x = startsWith qs xs
      | otherwise = False
