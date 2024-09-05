module CommonElements where

-- https://www.codewars.com/kata/5a6225e5d8e145b540000127/train/haskell

common :: [Int] -> [Int] -> [Int] -> Int
common xs ys zs = sum . filter (\x -> x `elem` ys && x `elem` zs) $ xs
