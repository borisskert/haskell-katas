module Codewars.BuildTower where

-- https://www.codewars.com/kata/576757b1df89ecf5bd00073b/train/haskell

buildTower :: Int -> [String]
buildTower n = map toRow [0 .. (n - 1)]
  where
    size = (n - 1) * 2 + 1 :: Int

    toRow :: Int -> String
    toRow m = spaces ++ asterisks ++ spaces
      where
        asterisksCount = (1 + 2 * m) :: Int
        asterisks = replicate asterisksCount '*' :: String
        spaces = replicate ((size - asterisksCount) `div` 2) ' ' :: String
