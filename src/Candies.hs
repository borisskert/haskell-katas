module Candies where

-- https://www.codewars.com/kata/59901cd68fc658ab6c000025/train/haskell

distribute :: Int -> Int -> [Int]
distribute candies children
  | children <= 0 = []
  | candies <= 0 = replicate children 0
  | otherwise = add (replicate rest 1) . replicate children $ quotient
  where
    quotientRest = divMod candies children :: (Int, Int)
    quotient = fst quotientRest :: Int
    rest = snd quotientRest :: Int

    add :: [Int] -> [Int] -> [Int]
    add xs [] = xs
    add [] ys = ys
    add (x : xs) (y : ys) = (x + y) : add xs ys
