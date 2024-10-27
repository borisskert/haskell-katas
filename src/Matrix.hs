module Matrix (matrix) where

-- https://www.codewars.com/kata/581214d54624a8232100005f/train/haskell

matrix :: [[Int]] -> [[Int]]
matrix arr = changeDiags 0 arr

changeDiags :: Int -> [[Int]] -> [[Int]]
changeDiags _ [] = []
changeDiags i (x : xs) = (changeRow i x :) . changeDiags (i + 1) $ xs

changeRow :: Int -> [Int] -> [Int]
changeRow index xs
  | xs !! index < 0 = replace index 0 xs
  | otherwise = replace index 1 xs

replace :: Int -> a -> [a] -> [a]
replace pos x xs = (take pos xs ++) . (x :) . drop (pos + 1) $ xs
