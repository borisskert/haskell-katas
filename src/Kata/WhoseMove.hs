module Kata.WhoseMove (whoseMove) where

--  https://www.codewars.com/kata/59126992f9f87fd31600009b/train/haskell

whoseMove :: String -> Bool -> String
whoseMove "black" False   = "white"
whoseMove "white" False   = "black"
whoseMove lastPlayer True = lastPlayer
