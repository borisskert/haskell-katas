module Codewars.G964.Revrot where

-- https://www.codewars.com/kata/56b5afb4ed1f6d5fb0000991/train/haskell

import Data.Char (digitToInt)
import Data.List.Split (divvy)

revRot :: [Char] -> Int -> [Char]
revRot strng 0 = []
revRot strng sz = concatMap reverseOrRotate . divvy sz sz $ strng
  where
    reverseOrRotate :: [Char] -> [Char]
    reverseOrRotate chunk@(c : cs)
      | isInteresting chunk = reverse chunk
      | otherwise = cs ++ [c]

    isInteresting :: [Char] -> Bool
    isInteresting = even . sum . map ((^ 2) . digitToInt)
