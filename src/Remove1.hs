module Remove1 (remove) where

-- https://www.codewars.com/kata/57faf32df815ebd49e000117/train/haskell

remove :: String -> String
remove = unwords . map removeFromEnd . words


removeFromEnd :: String -> String
removeFromEnd word
  | last word == '!' = removeFromEnd (init word)
  | otherwise = word
