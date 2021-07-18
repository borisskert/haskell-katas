module FriendOrFoe where

-- https://www.codewars.com/kata/55b42574ff091733d900002f/train/haskell

--best practice:
--friend :: [String] -> [[Char]]
--friend = filter $ (== 4) . length

friend :: [String] -> [[Char]]
friend = filter (\x -> length x == 4)
