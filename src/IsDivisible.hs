module IsDivisible (isDivisible) where

isDivisible :: Int -> Int -> Int -> Bool
isDivisible n x y = do
  let nDivX = n `div` x
  let nDivY = n `div` y
  
  n == nDivX * x && n == nDivY * y
