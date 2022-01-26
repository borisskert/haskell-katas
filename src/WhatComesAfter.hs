module WhatComesAfter (comesAfter) where

-- https://www.codewars.com/kata/590f5b4a7bbb3e246000007d/train/haskell

import Data.Char (isLetter, toLower)

comesAfter :: String -> Char -> String
comesAfter sentence c = filter isLetter . map (sentence !!) $ indices
  where
    indices =
      filter (< length sentence)
        . map (+ 1)
        . indicesOf c
        $ sentence ::
        [Int]

indicesOf :: Char -> String -> [Int]
indicesOf c = map fst . filter (isMatch c . snd) . zip [0 ..]

isMatch :: Char -> Char -> Bool
isMatch a b = toLower a == toLower b
