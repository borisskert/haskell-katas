module PellNumbers (pell) where

-- https://www.codewars.com/kata/5818d00a559ff57a2f000082/train/haskell

pell :: Int -> Integer
pell x = allPells !! x

allPells :: [Integer]
allPells = 0 : 1 : zipWith makeNext allPells (tail allPells)

makeNext :: Integer -> Integer -> Integer
makeNext x y = x + 2 * y

-- slightly better solution:
-- pell x = pellSeq !! x
-- pellSeq = 0 : 1 : zipWith ((+) . (* 2)) (tail pellSeq) pellSeq
