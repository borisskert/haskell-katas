module Codewars.Kata.Vowel where

--  https://www.codewars.com/kata/54ff3102c1bad923760001f3/train/haskell

getCount :: String -> Int
getCount = length . filter (`elem` "aeiou")
