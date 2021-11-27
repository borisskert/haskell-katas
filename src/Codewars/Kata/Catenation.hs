module Codewars.Kata.Catenation where

-- https://www.codewars.com/kata/55147ff29cd40b43c600058b/train/haskell

charConcat :: String -> String
charConcat [_] = []
charConcat word =
  concatMap (\(index, (a, z)) -> a : z : show index)
    . zip [1 ..]
    . headLast
    $ word
  where
    headLast :: String -> [(Char, Char)]
    headLast [] = []
    headLast [_] = []
    headLast word = (head word, last word) : headLast (init . tail $ word)
