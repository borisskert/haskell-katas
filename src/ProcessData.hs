module ProcessData (processData) where

-- https://www.codewars.com/kata/586e1d458cb711f0a800033b/train/haskell

processData :: [[Int]] -> Int
processData = product . map (\x -> head x - last x)
