module Codewars.G964.Opstrings1 where

-- https://www.codewars.com/kata/56dbe0e313c2f63be4000b25/train/haskell

vertMirror :: [Char] -> [Char]
vertMirror = init . unlines . map reverse . lines


horMirror :: [Char] -> [Char]
horMirror = init . unlines . reverse . lines


oper :: (String -> String) -> String -> String
oper fct strng = fct strng
