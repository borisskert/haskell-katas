module RevSeq where 

-- https://www.codewars.com/kata/5a00e05cc374cb34d100000d/train/haskell

reverseSeq :: Int -> [Int] 
reverseSeq 0 = []
reverseSeq n = [n] ++ reverseSeq (n - 1)
