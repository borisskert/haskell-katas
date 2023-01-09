module MaxAndMin where

-- https://www.codewars.com/kata/583c5469977933319f000403/train/haskell

maxAndmin :: [Int] -> [Int] -> [Int]
maxAndmin xs ys = [maximum diffs, minimum diffs]
  where
    diffs = concatMap (\x -> map (\y -> abs (x - y)) ys) xs
