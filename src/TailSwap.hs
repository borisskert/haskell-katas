module TailSwap (tailSwap) where

-- https://www.codewars.com/kata/5868812b15f0057e05000001/train/haskell

import Data.List.Split (splitOn)


tailSwap :: (String, String) -> (String, String)
tailSwap strings = (first, second)
  where
    separator = ":" :: String

    toSplit :: String -> [String]
    toSplit = splitOn separator

    first = (head . toSplit . fst $ strings) ++ separator ++ (last . toSplit . snd $ strings) :: String
    second = (head . toSplit . snd $ strings) ++ separator ++ (last . toSplit . fst $ strings) :: String
