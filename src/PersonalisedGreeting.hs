module PersonalisedGreeting (greet) where

-- https://www.codewars.com/kata/5772da22b89313a4d50012f7/train/haskell

greet :: String -> String -> String
greet name owner
  | name == owner = "Hello boss"
  | otherwise = "Hello guest"
