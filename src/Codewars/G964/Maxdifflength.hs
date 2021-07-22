module Codewars.G964.Maxdifflength where

--  https://www.codewars.com/kata/5663f5305102699bad000056/train/haskell

mxdiflg :: [String] -> [String] -> Maybe Int
mxdiflg [] _ = Nothing
mxdiflg _ [] = Nothing
mxdiflg s1 s2 = Just difference
  where
    difference = max (maxLength s1 - minLength s2) (maxLength s2 - minLength s1)


minLength :: [String] -> Int
minLength = minimum . map length


maxLength :: [String] -> Int
maxLength = maximum . map length
