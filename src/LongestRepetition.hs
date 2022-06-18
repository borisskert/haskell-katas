module LongestRepetition (longestRepetition) where

-- https://www.codewars.com/kata/586d6cefbcc21eed7a001155/train/haskell

longestRepetition :: String -> Maybe (Char, Int)
longestRepetition input
  | null found = Nothing
  | otherwise = Just (head found, length found)
  where
    found = snd . foldl counting ([], []) $ input

    counting :: ([Char], [Char]) -> Char -> ([Char], [Char])
    counting (collected, collectedMax) c = (collected', collectedMax')
      where
        collected'
          | null collected = [c]
          | head collected == c = c : collected
          | otherwise = [c]
        collectedMax'
          | length collected' > length collectedMax = collected'
          | otherwise = collectedMax
