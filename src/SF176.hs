module SF176 where

--  https://www.codewars.com/kata/58b8c94b7df3f116eb00005b/train/haskell

import Data.Char (isLower)

reverseLetter :: String -> String
reverseLetter = reverse . filter isLower
