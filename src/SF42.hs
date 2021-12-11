module SF42 where

-- https://www.codewars.com/kata/588820169ab1e053240000e0/train/haskell

areSimilar :: [Int] -> [Int] -> Bool
areSimilar [] [] = True
areSimilar [a] [b] = a == b
areSimilar (a:a':ax) (b:b':bx)
  | a == b = areSimilar (a':ax) (b':bx)
  | a' == b' = areSimilar (a : ax) (b : bx)
  | otherwise = a == b' && b == a' && ax == bx
