module Haskell.Codewars.RemoveChar where

-- https://www.codewars.com/kata/56bc28ad5bdaeb48760009b0/train/haskell

removeChar :: String -> String
removeChar str = removeFirst (removeLast str)

removeFirst :: [Char] -> [Char]
removeFirst [] = []
removeFirst (_:str) = str

removeLast :: [Char] -> [Char]
removeLast [] = []
removeLast [_] = []
removeLast (c:cs) = c : removeLast cs
