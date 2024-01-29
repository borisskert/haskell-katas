module ConstructSubmatrix (constructSubmatrix) where

-- https://www.codewars.com/kata/590818ddffa0da26ad00009b/train/haskell

constructSubmatrix :: [[a]] -> [Int] -> [Int] -> [[a]]
constructSubmatrix xs rows columns = map (dropsAt columns) (dropsAt rows xs)

dropsAt :: [Int] -> [a] -> [a]
dropsAt indices = map snd . filter (\(index, _) -> index `notElem` indices) . zip [0 ..]
