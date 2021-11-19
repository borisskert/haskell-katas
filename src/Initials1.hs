module Initials1 where

-- https://www.codewars.com/kata/57eadb7ecd143f4c9c0000a3/train/haskell

import Data.Char (toUpper)

getInitials :: String -> String
getInitials name = initials ('_' : name)


initials :: [Char] -> [Char]
initials [] = []
initials [c] = []
initials (first:second:cs) = do
  if first == ' '
    then '.' : (toUpper second) : initials cs
    else if first == '_'
      then (toUpper second) : initials cs
    else initials (second : cs)
