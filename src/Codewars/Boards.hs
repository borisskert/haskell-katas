module Codewars.Boards (checkeredBoard) where

-- https://www.codewars.com/kata/5650f1a6075b3284120000c0/train/haskell

import Data.List (intersperse)

checkeredBoard :: Int -> String
checkeredBoard n =
  init
    . unlines
    . map (row n)
    $ [1 .. n]

row :: Int -> Int -> [Char]
row n x = intersperse ' ' . map (square . even) . reverse $ [x .. x + n - 1]

square :: Bool -> Char
square False = '■'
square True = '□'
