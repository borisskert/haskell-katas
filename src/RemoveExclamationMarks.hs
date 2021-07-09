module RemoveExclamationMarks where

-- https://www.codewars.com/kata/57a0885cbb9944e24c00008e/train/haskell

removeExclamationMarks :: String -> String
removeExclamationMarks = filter (/= '!')
