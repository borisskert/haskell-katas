module ASCII where

--  https://www.codewars.com/kata/55acfc59c3c23d230f00006d/train/haskell

--best practice:
--getASCII :: Char -> Int
--getASCII = fromEnum

import Data.Char (ord)

getASCII :: Char -> Int
getASCII = ord
