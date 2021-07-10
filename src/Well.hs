module Well where

-- https://www.codewars.com/kata/57f222ce69e09c3630000212/train/haskell

well :: [String] -> String
well ideas
  | goodIdeas == 0 = "Fail!"
  | goodIdeas < 3 = "Publish!"
  | otherwise = "I smell a series!"
  where goodIdeas = countWell ideas


countWell :: [String] -> Int
countWell = length . filter (== "good")
