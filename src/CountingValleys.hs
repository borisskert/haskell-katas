module CountingValleys (valleys) where

-- https://www.codewars.com/kata/5da9973d06119a000e604cb6/train/haskell

import Data.List.Split (splitWhen)

valleys :: String -> Int
valleys =
  length
    . filter (not . null)
    . splitWhen (== 0)
    . reverse
    . dropWhile (/= 0)
    . reverse
    . dropWhile (/= 0)
    . filter (>= 0)
    . toLevels
  where
    toLevels :: [Char] -> [Int]
    toLevels path = go 0 path
      where
        go :: Int -> [Char] -> [Int]
        go level [] = [level]
        go level (c : cs)
          | c == 'U' = level : go (level - 1) cs
          | c == 'D' = level : go (level + 1) cs
          | otherwise = go level cs
