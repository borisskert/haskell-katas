module Codewars.StringMaker where

-- https://www.codewars.com/kata/5639bdcef2f9b06ce800005b/train/haskell

makeString :: String -> String
makeString = map head . words
