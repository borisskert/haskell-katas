module Medal where

-- https://www.codewars.com/kata/5915686ed2563aa6650000ab/train/haskell

import Data.List.Split (splitOn)

evilCodeMedal :: String -> String -> String -> String -> Maybe String
evilCodeMedal userTime gold silver broze
  | parse userTime < parse gold = Just "Gold"
  | parse userTime < parse silver = Just "Silver"
  | parse userTime < parse broze = Just "Bronze"
  | otherwise = Nothing
  where
    parse :: String -> Int
    parse time = seconds + 60 * (minutes + 60 * hours)
      where
        split = splitOn ":" time
        hours = read . (!! 0) $ split :: Int
        minutes = read . (!! 1) $ split :: Int
        seconds = read . (!! 2) $ split :: Int
