module CountVowels where

-- https://www.codewars.com/kata/59c5f4e9d751df43cf000035/train/haskell

solve :: String -> Int
solve = countVowels 0 0


countVowels :: Int -> Int -> String -> Int
countVowels max _ [] = max
countVowels max current text
  | head text `elem` "aeiouAEIOU" = countVowels (maximum [max, current + 1]) (current + 1) (tail text)
  | otherwise = countVowels max 0 (tail text)
