module Kata.Sentencify (sentencify) where

-- https://www.codewars.com/kata/59ad7d2e07157af687000070/train/haskell

import Data.Char (toUpper)

sentencify :: [String] -> String
sentencify = (++ ".") . capitalize . unwords
  where
    capitalize :: String -> String 
    capitalize xs = toUpper (head xs) : tail xs
