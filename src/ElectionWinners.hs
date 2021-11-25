module ElectionWinners where

-- https://www.codewars.com/kata/58881b859ab1e053240000cc/train/haskell

electionWinners :: [Int] -> Int -> Int
electionWinners votes 0
  | potentialWinners == 1 = 1
  | otherwise = 0
  where
    potentialWinners = length . filter (== maxVotes) $ votes :: Int
    maxVotes = maximum votes :: Int

electionWinners votes voters = length . filter (> (maxVotes - voters)) $ votes
  where
    maxVotes = maximum votes :: Int
