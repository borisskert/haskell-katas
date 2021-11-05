module Codewars.Kata.VowelOne where

-- https://www.codewars.com/kata/580751a40b5a777a200000a1/train/haskell

vowelOne :: String -> String
vowelOne = map toOne

toOne :: Char -> Char
toOne x
  | isVowel x = '1'
  | otherwise = '0'

isVowel :: Char -> Bool
isVowel x = x `elem` "AEIOUaeiou"
