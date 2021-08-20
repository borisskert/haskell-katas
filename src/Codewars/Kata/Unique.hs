module Codewars.Kata.Unique where

-- https://www.codewars.com/kata/553e8b195b853c6db4000048/train/haskell

hasUniqueChar :: String -> Bool
hasUniqueChar str = not . any (== False) $ map isUnique str
  where
    isUnique :: Char -> Bool
    isUnique char = (== 1) . length $ filter (== char) str
