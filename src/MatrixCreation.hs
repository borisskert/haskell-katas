module MatrixCreation (getMatrix) where

-- https://www.codewars.com/kata/5a34da5dee1aae516d00004a/train/haskell

getMatrix :: Int -> [[Int]]
getMatrix x = map makeRow [0 .. x - 1]
  where
    makeRow n = replicate n 0 ++ [1] ++ replicate (x - n - 1) 0
