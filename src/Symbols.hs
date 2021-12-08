module Symbols where

--  https://www.codewars.com/kata/59ddeeb2fc3c49186f00009c/train/haskell

transform :: String -> String
transform [] = []
transform (c : cs)
  | count > 1 = c : show count ++ transform without
  | otherwise = c : transform cs
  where
    count = length . filter (== c) $ c : cs
    without = filter (/= c) cs :: String
