module NaughtyNice where

-- https://www.codewars.com/kata/52a6b34e43c2484ac10000cd/train/haskell

type Warrior = (String, Bool)

getNiceNames :: [Warrior] -> [String]
getNiceNames = map fst . filter snd

getNaughtyNames :: [Warrior] -> [String]
getNaughtyNames = map fst . filter (\(_, wasNice) -> not wasNice)
