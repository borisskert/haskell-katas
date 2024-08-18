module SyntaxHighlighter (highlight) where

-- https://www.codewars.com/kata/58708934a44cfccca60000c4/train/haskell

import Data.Char (isDigit)
import Data.List (groupBy)

highlight :: String -> String
highlight = concatMap wrap . groupBy tokenize

tokenize :: Char -> Char -> Bool
tokenize 'F' 'F' = True
tokenize 'R' 'R' = True
tokenize 'L' 'L' = True
tokenize a b
  | a == b = True
  | otherwise = isDigit a && isDigit b

wrap :: String -> String
wrap token@('F' : xs) = "<span style=\"color: pink\">" ++ token ++ "</span>"
wrap token@('L' : xs) = "<span style=\"color: red\">" ++ token ++ "</span>"
wrap token@('R' : xs) = "<span style=\"color: green\">" ++ token ++ "</span>"
wrap token@(x : xs)
  | isDigit x = "<span style=\"color: orange\">" ++ token ++ "</span>"
  | otherwise = token
wrap "" = ""
