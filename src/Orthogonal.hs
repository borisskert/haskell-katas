module Orthogonal where

-- https://www.codewars.com/kata/53670c5867e9f2222f000225/train/haskell

isOrthogonal :: [Int] -> [Int] -> Bool
isOrthogonal xs ys = (== 0) $ dotProduct xs ys

dotProduct :: [Int] -> [Int] -> Int
dotProduct [] [] = 0
dotProduct (x : xs) (y : ys) = x * y + dotProduct xs ys



-- #againwhatlearned
-- use `zipWith`
-- dotProduct = (sum .) . zipWith (*)
