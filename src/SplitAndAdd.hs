module SplitAndAdd (splitAndAdd) where

--  https://www.codewars.com/kata/5946a0a64a2c5b596500019a/train/haskell

splitAndAdd :: [Int] -> Int -> [Int]
splitAndAdd [x] _ = [x]
splitAndAdd xs 0 = xs
splitAndAdd xs n = splitAndAdd added (n - 1)
  where
    half = (`div` 2) . length $ xs
    first = take half xs
    second = drop half xs
    added = add' first second

add' :: [Int] -> [Int] -> [Int]
add' [] ys = ys
add' xs [] = xs
add' xs ys = add' (init xs) (init ys) ++ [last xs + last ys]
