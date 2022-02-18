module JoinedWords where

-- https://www.codewars.com/kata/5436bb1df0c10d280900131f/train/haskell

joinS :: [[Char]] -> [Char] -> [Char]
joinS [] _ = []
joinS [word] _ = word
joinS (w : words) separator = w ++ separator ++ joinS words separator
