module CodeWars.OCRMistakes where

-- https://www.codewars.com/kata/577bd026df78c19bca0002c0/train/haskell

correct :: String -> String
correct = map correctLetter


correctLetter :: Char -> Char
correctLetter char
  | char == '5' = 'S'
  | char == '0' = 'O'
  | char == '1' = 'I'
  | otherwise = char
