module Banjo where

-- https://www.codewars.com/kata/53af2b8861023f1d88000832/train/haskell

areYouPlayingBanjo :: String -> String
areYouPlayingBanjo name
  | canPlay name = name ++ " plays banjo"
  | otherwise = name ++ " does not play banjo"


canPlay :: String -> Bool
canPlay (letter:others) = letter == 'R' || letter == 'r'
