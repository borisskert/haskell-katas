module MatrixTranspose (transpose) where

-- https://www.codewars.com/kata/52fba2a9adcd10b34300094c/train/haskell

transpose :: [[a]] -> [[a]]
transpose [] = []
transpose xss = map (\x -> map (\y -> xss !! y !! x) [0, 1 .. height - 1]) [0, 1 .. width - 1]
  where
    height = length xss
    width = length . head $ xss
