module NotAboveTheOne (binaryCleaner) where

-- https://www.codewars.com/kata/5b5097324a317afc740000fe/train/haskell

binaryCleaner :: [Int] -> ( [Int], [Int] )
binaryCleaner xs = (filter (< 2) xs, map fst . filter ((>= 2) . snd) . zip [0..] $ xs)


-- use `findIndices` from Data.list
