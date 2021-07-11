module Codewars.Kata.Shortcut where

--  https://www.codewars.com/kata/5547929140907378f9000039/train/haskell

--best practice:
--shortcut :: String -> String
--shortcut = filter (`notElem` "aeiou")

shortcut :: String -> String
shortcut = filter (/= 'a') . filter (/= 'e') . filter (/= 'i') . filter (/= 'o') . filter (/= 'u')
