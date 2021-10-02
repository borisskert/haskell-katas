module Codewars.G964.Funreverse where

-- https://www.codewars.com/kata/566efcfbf521a3cfd2000056/train/haskell

reverseFun :: String -> String
reverseFun [] = []
reverseFun [x] = [x]
reverseFun (x:xs) = last xs : x : reverseFun (init xs)
