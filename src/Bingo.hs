module Bingo where

-- https://www.codewars.com/kata/57f625992f4d53c24200070e/train/haskell

import Data.Char (ord)

bingo :: [(String, Int)] -> Int -> String
bingo ticket number
  | miniwins >= number = "Winner!"
  | otherwise = "Loser!"
  where
    miniwins = length . filter hasMiniwin $ ticket

hasMiniwin :: (String, Int) -> Bool
hasMiniwin (abc, code) = any (\c -> ord c == code) abc
