module Codewars.G964.Partlist where

--  https://www.codewars.com/kata/56f3a1e899b386da78000732/train/haskell

partlist :: [String] -> [(String, String)]
partlist arr = go ([], arr)
  where
    go :: ([String], [String]) -> [(String, String)]
    go ([], right) = [((head right), unwords (tail right))] ++ go ([head right], tail right)
    go (left, [r1, r2]) = [(unwords (left ++ [r1]), r2)]
    go (left, right) = [(unwords (left ++ [head right]), unwords (tail right))] ++ go (left ++ [head right], tail right)
