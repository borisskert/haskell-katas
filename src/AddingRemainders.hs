module AddingRemainders where

-- https://www.codewars.com/kata/5acc3634c6fde760ec0001f7/train/haskell

solve:: [Int] -> Int -> [Int]
solve xs div = map ((+) <*> (`mod` div)) xs
