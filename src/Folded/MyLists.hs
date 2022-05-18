module Folded.MyLists (foldList) where

-- https://www.codewars.com/kata/57ea70aa5500adfe8a000110/train/haskell

foldList :: [Int] -> Int -> [Int]
foldList xs n
  | n > 0 = foldList (foldOnce xs) (n - 1)
  | otherwise = xs

foldOnce :: [Int] -> [Int]
foldOnce [] = []
foldOnce [x] = [x]
foldOnce xs = head xs + last xs : foldOnce (init . tail $ xs)
