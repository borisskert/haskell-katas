module NoSpace (noSpace) where

-- https://www.codewars.com/kata/57eae20f5500ad98e50002c5/train/haskell

noSpace :: String -> String
noSpace "" = ""
noSpace (c:cs) = do
  if c == ' '
    then noSpace cs
    else c : noSpace cs
