module Stringify where

-- https://www.codewars.com/kata/582c297e56373f0426000098/train/haskell

stringify :: [Int] -> String
stringify [] = "null"
stringify xs = join " -> " (map show xs) ++ " -> null"


-- Data.Text (intercalate)
join :: String -> [String] -> String
join _ [] = ""
join _ [x] = x
join delimiter (x1:others) = x1 ++ delimiter ++ join delimiter others
