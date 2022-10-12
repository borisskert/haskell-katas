module StringSubpatternRecognitionI (hasSubpattern) where

--  https://www.codewars.com/kata/5a49f074b3bfa89b4c00002b/train/haskell

import Data.List.Split (chunksOf)

hasSubpattern :: String -> Bool
hasSubpattern cs = any (allSame . (`chunksOf` cs)) factorsN
  where
    n = length cs
    factorsN = factors n :: [Int]

allSame :: [String] -> Bool
allSame strings = all (== head strings) . tail $ strings

factors :: Int -> [Int]
factors n = filter (\x -> n `mod` x == 0) [1 .. (n `div` 2)]
