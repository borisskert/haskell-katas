module Disemvowel where

--  https://www.codewars.com/kata/52fba66badcd10859f00097e/train/haskell

disemvowel :: String -> String
disemvowel = filter (`notElem` "aeiouAEIOU")
