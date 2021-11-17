module Smile where

-- https://www.codewars.com/kata/583203e6eb35d7980400002a/train/haskell

countSmileys :: [String] -> Int
countSmileys = length . filter isValid

isValid xs = all (\r -> r xs) rules

rules =
  [ (\x -> x == 2 || x == 3) . length,
    \xs -> head xs == ':' || head xs == ';',
    \xs -> last xs == ')' || last xs == 'D',
    \xs -> length xs == 2 || xs !! 1 == '-' || xs !! 1 == '~'
  ]
