module Centre where

-- https://www.codewars.com/kata/5f5da7a415fbdc0001ae3c69/train/haskell

import Data.List.Split (splitOn)

isInMiddle :: String -> Bool
isInMiddle "abc" = True
isInMiddle text
  | count < 4 = False
  | odd count = containsAbcAt (half - 1)
  | otherwise = containsAbcAt (half - 1) || containsAbcAt (half - 2)
  where
    count = length text :: Int
    half = count `div` 2 :: Int

    containsAbcAt :: Int -> Bool
    containsAbcAt index = (text !! index) == 'a' && text !! (index + 1) == 'b' && text !! (index + 2) == 'c'
