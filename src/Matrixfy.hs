module Matrixfy (matrixfy) where

-- https://www.codewars.com/kata/5a91e0793e9156ccb0003f6e/train/haskell

import Data.List (genericLength)
import Data.List.Split (chunksOf)

matrixfy :: String -> Either String [[Char]]
matrixfy name
  | null name = Left "name must be at least one letter"
  | otherwise = Right . chunksOf size . padRight (size * size) '.' $ name
  where
    size = chunkSize name

padRight :: Int -> Char -> String -> String
padRight size pad xs = take size . (xs ++) . repeat $ pad

chunkSize :: String -> Int
chunkSize x
  | size * size < length x = size + 1
  | otherwise = size
  where
    size = round . sqrt . genericLength $ x
