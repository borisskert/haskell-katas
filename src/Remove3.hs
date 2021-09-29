module Remove3 (remove) where

-- https://www.codewars.com/kata/57faefc42b531482d5000123/train/haskell

remove :: String -> String
remove [] = []
remove s
  | last s == '!' = remove (init s) ++ "!"
  | otherwise = filter (/= '!') s
