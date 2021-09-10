module Codewars.Kata.Spacify where

-- https://www.codewars.com/kata/57f8ee485cae443c4d000127/train/haskell

spacify :: String -> String
spacify = unwordsWith ' '


-- use Data.List(intersperse)
unwordsWith :: a -> [a] -> [a]
unwordsWith _ [] = []
unwordsWith _ [x] = [x]
unwordsWith separator list = head list : separator : unwordsWith separator (tail list)
