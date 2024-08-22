module DuplicateArguments (solution) where

-- https://www.codewars.com/kata/520d9c27e9940532eb00018e/train/haskell

import Data.List (nub)

solution :: (Eq a, Ord a) => [a] -> Bool
solution xs = (< length xs) . length . nub $ xs
