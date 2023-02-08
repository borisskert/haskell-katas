module PrimeString (primeString) where

-- https://www.codewars.com/kata/589d36bbb6c071f7c20000f7/train/haskell

import Data.List (nub)
import Data.List.Split (chunksOf)

primeString :: String -> Bool
primeString xs =
  not
    . any ((\x -> length x == 1) . (nub . (`chunksOf` xs)))
    . (\x -> [1 .. x])
    . (`div` 2)
    . length
    $ xs
