module Codewars.Kata.SplitStrings where

-- https://www.codewars.com/kata/515de9ae9dcfc28eb6000001/train/haskell

import Data.List.Split (divvy)

solution :: String -> [String]
solution xs
  | odd . length $ xs = pairs ++ [last xs : "_"]
  | otherwise = pairs
  where
    pairs = divvy 2 2 xs
