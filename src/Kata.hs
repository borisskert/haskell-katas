module Kata where

-- https://www.codewars.com/kata/57fae964d80daa229d000126/train/haskell

remove :: String -> String
remove sentence
  | last sentence == '!' = init sentence
  | otherwise = sentence
