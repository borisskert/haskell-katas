module Codewars.Kata.DataReverse (dataReverse) where

--  https://www.codewars.com/kata/569d488d61b812a0f7000015/train/haskell

dataReverse :: [Int] -> [Int]
dataReverse = concat . reverse . octets

octets :: [Int] -> [[Int]]
octets [] = []
octets xs = take 8 xs : octets (drop 8 xs)

-- Again what learned:
-- use `chunksOf`
-- import Data.List.Split (chunksOf)
-- dataReverse = concat . reverse . chunksOf 8
