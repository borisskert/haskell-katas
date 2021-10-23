module Operation (result) where

-- https://www.codewars.com/kata/60bcef3c4a3ef30015bc05dd/train/haskell

result :: [[Int]] -> Int
result = product . map sum
