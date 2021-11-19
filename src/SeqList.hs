module SeqList where

-- https://www.codewars.com/kata/541da001259d9ca85d000688/train/haskell

seqlist :: Int -> Int -> Int -> [Int]
seqlist start step count = take count $ [start, (start + step) .. ]
