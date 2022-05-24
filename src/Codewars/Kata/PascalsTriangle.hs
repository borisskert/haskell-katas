module Codewars.Kata.PascalsTriangle where

--  https://www.codewars.com/kata/5226eb40316b56c8d500030f/train/haskell

import Data.List.Split (divvy)

pascalsTriangle :: Int -> [Int]
pascalsTriangle n = concat . take n . iterate pascalsRow $ [1]
  where
    pascalsRow :: [Int] -> [Int]
    pascalsRow xs = 1 : (map sum . divvy 2 1 $ xs) ++ [1]
