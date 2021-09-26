module Codewars.Kata.PaddedNumbers where

-- https://www.codewars.com/kata/51c89385ee245d7ddf000001/train/haskell

-- best practice: 
-- import Text.Printf

-- solution :: Int -> String
-- solution = printf "Value is %05d" 


solution :: Int -> String
solution n = "Value is " ++ formattedNumber
  where
    nAsString = show n :: String
    leadingZeros = replicate (5 - length nAsString) '0' :: String
    formattedNumber = leadingZeros ++ nAsString :: String
