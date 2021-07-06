module CodeWars.SmallestInteger where

-- https://www.codewars.com/kata/55a2d7ebe362935a210000b2/train/haskell

findSmallestInteger :: [Int] -> Int
findSmallestInteger [n] = n
findSmallestInteger (n:ns) = min n (findSmallestInteger ns)
