module RemoveEnd where

--  https://www.codewars.com/kata/57faece99610ced690000165/train/haskell

remove :: String -> String
remove [] = []
remove str
  | last str == '!' = remove $ init str
  | otherwise = str
