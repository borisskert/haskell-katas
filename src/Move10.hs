module Move10 where

-- https://www.codewars.com/kata/57cf50a7eca2603de0000090/train/haskell

import Data.Char (ord, chr)


move10 :: String -> String
move10 = map (chr . (+ offset) . (`mod` 26) . (+ 10) . (\x -> x - offset) . ord)
  where
    offset = ord 'a' :: Int
