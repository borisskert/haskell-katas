module LochNessMonster where

--  https://www.codewars.com/kata/55ccdf1512938ce3ac000056/train/haskell

import Data.List (isInfixOf)
  
isLochNessMonster :: String -> Bool
isLochNessMonster sentence = isInfixOf "three fifty" sentence || isInfixOf "tree fiddy" sentence || isInfixOf "3.50" sentence
