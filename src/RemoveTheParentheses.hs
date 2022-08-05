module RemoveTheParentheses (removeParentheses) where

--  https://www.codewars.com/kata/5f7c38eb54307c002a2b8cc8/train/haskell

import Data.Maybe (fromJust, isNothing)

removeParentheses :: String -> String
removeParentheses xs
  | isNothing interval = xs
  | otherwise = removeParentheses removed
  where
    interval = findFirstInterval xs
    removed = removeInterval (fromJust interval) xs

    findFirstInterval :: String -> Maybe (Int, Int)
    findFirstInterval = searchInterval . zip [0 ..]
      where
        searchInterval :: [(Int, Char)] -> Maybe (Int, Int)
        searchInterval [] = Nothing
        searchInterval ((index, c) : remaining)
          | c == '(' = searchEnd index remaining
          | c == ')' = error "Should not happen"
          | otherwise = searchInterval remaining

        searchEnd :: Int -> [(Int, Char)] -> Maybe (Int, Int)
        searchEnd _ [] = Nothing
        searchEnd foundStart ((index, c) : remaining)
          | c == '(' = searchEnd index remaining
          | c == ')' = Just (foundStart, index)
          | otherwise = searchEnd foundStart remaining

    removeInterval :: (Int, Int) -> String -> String
    removeInterval (start, end) = map snd . filter (\(index, _) -> index < start || index > end) . zip [0 ..]
