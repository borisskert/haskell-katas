module OddEvenSort where

-- https://www.codewars.com/kata/580755730b5a77650500010c/train/haskell

import Data.Char (ord)


sortMyString :: String -> String
sortMyString xs = unwords [evenChars, oddChars]
  where
    indexed = zip [0..] xs :: [(Int, Char)]
    oddChars = map snd . filter (odd . fst) $ indexed :: String
    evenChars = map snd . filter (even . fst) $ indexed :: String
