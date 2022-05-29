module MiniStringFuck (myFirstInterpreter) where

--  https://www.codewars.com/kata/586dd26a69b6fd46dd0000c0/train/haskell

import Data.Char (chr)

myFirstInterpreter :: String -> String
myFirstInterpreter = interpreter 0

interpreter :: Int -> String -> String
interpreter _ [] = []
interpreter memory ('+' : cs) = interpreter newMemory cs
  where
    newMemory = (`mod` 256) . (+ 1) $ memory
interpreter memory ('.' : cs) = chr memory : interpreter memory cs
interpreter memory (_ : cs) = interpreter memory cs
