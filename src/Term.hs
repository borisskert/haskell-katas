module Term where

--  https://www.codewars.com/kata/5420fc9bb5b2c7fd57000004/train/haskell

import Data.List (group, sort, sortOn)

highestRank :: (Ord c) => [c] -> c
highestRank = head . last . sortOn length . group . sort
