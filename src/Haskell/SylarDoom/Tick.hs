module Haskell.SylarDoom.Tick (interpreter) where

-- https://www.codewars.com/kata/587edac2bdf76ea23500011a/train/haskell

import Data.Map (Map, lookup, insert, empty)
import Prelude hiding (lookup)
import Data.Maybe (fromMaybe)
import Data.Char (chr)

interpreter :: String -> String
interpreter tape = execute tape empty 0

execute :: [Char] -> Map Int Int -> Int -> [Char]
execute [] _ _ = []
execute ('>':tape) memory pos = execute tape memory (pos + 1)
execute ('<':tape) memory pos = execute tape memory (pos - 1)
execute ('+':tape) memory pos = execute tape (increment pos memory 1) pos
execute ('-':tape) memory pos = execute tape (increment pos memory (- 1)) pos
execute ('*':tape) memory pos = chr cell : execute tape memory pos
  where
    cell = readMemory pos memory
execute (x:_) _ _ = error ("Unknown symbol on tape: " ++ [x])

readMemory :: Int -> Map Int Int -> Int
readMemory pos = fromMaybe 0 . lookup pos

increment :: Int -> Map Int Int -> Int -> Map Int Int
increment pos memory increment = insert pos (cell + increment) memory
  where
    cell = readMemory pos memory
