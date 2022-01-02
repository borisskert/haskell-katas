module MaxProduct1 where

-- https://www.codewars.com/kata/5d0365accfd09600130a00c9/train/haskell

solve :: [[Int]] -> Int
solve = maximum . products

products :: [[Int]] -> [Int]
products [] = [1]
products [x] = x
products (x1 : x2 : others) = products (mult x1 x2 : others)

mult :: [Int] -> [Int] -> [Int]
mult [] _ = []
mult _ [] = []
mult xs ys = map (* head xs) ys ++ mult (tail xs) ys


-- best practice:
-- solve :: [[Int]] -> Int
-- solve = maximum. map product. sequence
