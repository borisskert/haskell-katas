module Kata (lowestTemp) where

-- https://www.codewars.com/kata/588e0f11b7b4a5b373000041/train/haskell

lowestTemp :: String -> Maybe Int
lowestTemp [] = Nothing
lowestTemp t = Just . minimum . map read . words $ t
