module Repeater where

-- https://www.codewars.com/kata/585a1a227cb58d8d740001c3/train/haskell

repeater :: String -> Int -> String
repeater string n = take count $ cycle string
  where
    count = length string * n
