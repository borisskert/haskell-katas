module Stray (stray) where

-- https://www.codewars.com/kata/57f609022f4d534f05000024/train/haskell

import Data.List (sort)

stray :: [Int] -> Int
stray xs
  | headX /= head tailX = headX
  | otherwise = last sorted
  where
    sorted = sort xs
    headX = head sorted
    tailX = tail sorted
