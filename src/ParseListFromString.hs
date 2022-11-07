module ParseListFromString (parse) where

--  https://www.codewars.com/kata/582c5382f000e535100001a7/train/haskell

import Data.List.Split (splitOn)

parse :: String -> [Word]
parse = map read . init . splitOn " -> "
