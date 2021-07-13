module CountCubes (count) where

--  https://www.codewars.com/kata/5763bb0af716cad8fb000580/train/haskell

count :: Int -> Int
count 0 = 1
count cuts = ((cuts + 1) ^ 3) - ((cuts - 1) ^ 3)
