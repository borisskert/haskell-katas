module IsItLetter where

isItLetter :: Char -> Bool
isItLetter c
  | c >= 'a' && c <= 'z' = True
  | c >= 'A' && c <= 'Z' = True
  | otherwise = False
