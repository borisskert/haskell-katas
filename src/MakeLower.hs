module MakeLower where

--  https://www.codewars.com/kata/57a059d753ba33229500001a/train/haskell

import Data.Char (toLower)

makeLowerCase :: [Char] -> [Char]
makeLowerCase = map toLower
