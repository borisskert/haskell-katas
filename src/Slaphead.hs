module Slaphead where

-- https://www.codewars.com/kata/57efab9acba9daa4d1000b30/train/haskell

bald :: String -> (String, String)
bald cs = (dashes, category)
  where
    dashes = replicate (length cs) '-'
    category = who . length . filter (== '/') $ cs
    
    who :: Int -> String
    who 0 = "Clean!"
    who 1 = "Unicorn!"
    who 2 = "Homer!"
    who n
      | n <= 5 = "Careless!"
      | otherwise = "Hobo!"
