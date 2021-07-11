module RemoveButLast where

--  https://www.codewars.com/kata/57faf12b21c84b5ba30001b0/train/haskell

remove :: String -> String
remove s = filter (/= '!') s ++ "!"
