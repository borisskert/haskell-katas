module Automaton (readCommands) where

--  https://www.codewars.com/kata/5268acac0d3f019add000203/train/haskell

readCommands :: [Char] -> Bool
readCommands = (== "q2") . foldl transition "q1"

transition :: String -> Char -> String
transition "q1" '0' = "q1"
transition "q1" '1' = "q2"
transition "q2" '0' = "q3"
transition "q2" '1' = "q2"
transition "q3" _ = "q2"
transition _ _ = error "Should not happen"
