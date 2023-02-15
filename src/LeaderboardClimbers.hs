module LeaderboardClimbers (leaderboardSort) where

-- https://www.codewars.com/kata/5f6d120d40b1c900327b7e22/train/haskell

import Data.List (delete, elemIndex)
import Data.Maybe (fromJust)

leaderboardSort :: [String] -> [String] -> [String]
leaderboardSort names rawChanges = newRankings
  where
    changes = readChanges rawChanges
    newRankings = patch names changes

patch :: [String] -> [(String, Int)] -> [String]
patch leaderboard [] = leaderboard
patch leaderboard ((name, change) : others) = patch newLeaderboard others
  where
    oldIndex = fromJust . elemIndex name $ leaderboard
    newIndex = oldIndex - change
    newLeaderboard = insertAt name newIndex . delete name $ leaderboard

readChanges :: [String] -> [(String, Int)]
readChanges = map readChange
  where
    readChange :: String -> (String, Int)
    readChange cs = (takeUntil (== ' ') cs, read . takeUntilEnd (\c -> (c == ' ') || (c == '+')) $ cs)

takeUntil :: (a -> Bool) -> [a] -> [a]
takeUntil f = takeWhile (not . f)

takeUntilEnd :: (a -> Bool) -> [a] -> [a]
takeUntilEnd f = reverse . takeWhile (not . f) . reverse

insertAt :: a -> Int -> [a] -> [a]
insertAt y _ [] = [y]
insertAt y 0 xs = y : xs
insertAt y i (x : xs) = x : insertAt y (i - 1) xs
