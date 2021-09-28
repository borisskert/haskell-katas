module CWSpam where

-- https://www.codewars.com/kata/52e9aa89b5acdd26d3000127/train/haskell

spam :: Int -> String
spam i = concat . replicate i $ "hue"
