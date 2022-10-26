module NextVersion (nextVersion) where

-- https://www.codewars.com/kata/56c0ca8c6d88fdb61b000f06/train/haskell

import Data.List (intercalate)
import Data.List.Split (splitOn)

nextVersion :: String -> String
nextVersion cs
  | null init' = show . (+ 1) $ last'
  | last' == 9 = (++ ".0") . nextVersion . formatVersion $ init'
  | otherwise = formatVersion . (init' ++) . (: []) . (+ 1) $ last'
  where
    versions = map read . splitOn "." $ cs :: [Int]
    last' = last versions :: Int
    init' = init versions :: [Int]

formatVersion :: [Int] -> String
formatVersion = intercalate "." . map show
