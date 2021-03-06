module StudentsFinalGrade (finalGrade) where

-- https://www.codewars.com/kata/5ad0d8356165e63c140014d4/train/haskell

finalGrade :: Int -> Int -> Int
finalGrade exam projects
  | exam > 90 || projects > 10 = 100
  | exam > 75 && projects >= 5 = 90
  | exam > 50 && projects >= 2 = 75
  | otherwise = 0
