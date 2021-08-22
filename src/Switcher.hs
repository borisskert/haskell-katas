module Switcher where

-- https://www.codewars.com/kata/57ebaa8f7b45ef590c00000c/train/haskell

import Data.Char (chr, ord)


switcher :: [String] -> String
switcher = map (fromNumber . read)
  where
    fromNumber :: Int -> Char
    fromNumber 27 = '!'
    fromNumber 28 = '?'
    fromNumber 29 = ' '
    fromNumber n = chr . (+ offset) . (-) 26 $ n
      where
        offset = ord 'a'
