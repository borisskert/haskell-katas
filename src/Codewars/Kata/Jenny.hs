module Codewars.Kata.Jenny where

-- https://www.codewars.com/kata/55225023e1be1ec8bc000390/train/haskell

greet :: String -> String
greet "Johnny" = "Hello, my love!"
greet name     = "Hello, " ++ name ++ "!"
