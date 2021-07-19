module Codewars.Triangles where

--  https://www.codewars.com/kata/56606694ec01347ce800001b/train/haskell

import Data.List (sort)

isTriangle :: Int -> Int -> Int -> Bool
isTriangle a b c
  | a < 1 || b < 1 || c < 1             = False
  | (head sorted) < (sum $ tail sorted) = True
  | otherwise                           = False
  where
    sorted = reverse $ sort [a, b, c]
