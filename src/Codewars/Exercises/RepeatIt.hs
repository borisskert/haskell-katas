module Codewars.Exercises.RepeatIt where

--  https://www.codewars.com/kata/557af9418895e44de7000053/train/haskell

repeatIt :: String -> Int -> String
repeatIt _ 0   = []
repeatIt str n = str ++ repeatIt str (n - 1)
