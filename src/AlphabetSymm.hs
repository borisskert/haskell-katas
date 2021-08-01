module AlphabetSymm where

-- https://www.codewars.com/kata/59d9ff9f7905dfeed50000b0/train/haskell

import Data.Char (ord, toLower)


solve :: [String] -> [Int]
solve = map countCorrect


countCorrect :: String -> Int
countCorrect text = length $ filter isCorrect withIndices
  where
    withIndices = zip [1..] text :: [(Int, Char)]


isCorrect :: (Int, Char) -> Bool
isCorrect (index, char) = ord (toLower char) - offset == index
  where
    offset = ord 'a' - 1
