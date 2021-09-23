module Boredom where

data Department =  ACCOUNTS | FINANCE | CANTEEN | REGULATION | TRADING | CHANGE | IS | RETAIL | CLEANING | PISSING_ABOUT deriving (Bounded, Enum, Show, Eq) 

-- https://www.codewars.com/kata/57ed4cef7b45ef8774000014/train/haskell

boredom :: [(String,Department)] -> String
boredom xs
  | score >= 100 = "party time!!" 
  | score <= 80 = "kill me now" 
  | otherwise = "i can handle this" 
  where
    score = sum . map (toScore . snd) $ xs


toScore :: Department -> Int
toScore ACCOUNTS = 1
toScore FINANCE = 2
toScore CANTEEN = 10
toScore REGULATION = 3
toScore TRADING = 6
toScore CHANGE = 6
toScore IS = 8
toScore RETAIL = 5
toScore CLEANING = 4
toScore PISSING_ABOUT = 25
