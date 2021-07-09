module CountSheep where

-- https://www.codewars.com/kata/5b077ebdaf15be5c7f000077/train/haskell

countSheep :: Int -> String
countSheep n = concat (map toSheep [1..n])


toSheep :: Int -> String
toSheep n = show n ++ " sheep..."
