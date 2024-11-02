module IsSmooth (isSmooth) where

-- https://www.codewars.com/kata/5886d35d4703f125a6000008/train/haskell

isSmooth :: [Int] -> Bool
isSmooth xs = first == center' && center' == last'
  where
    first = head xs
    last' = last xs
    center' = center xs

center :: [Int] -> Int
center [x] = x
center [x, y] = x + y
center xs = center . init . tail $ xs
