module Kata (ascendDescend) where

-- https://www.codewars.com/kata/62ca07aaedc75c88fb95ee2f/train/haskell

ascendDescend :: Int -> Int -> Int -> String
ascendDescend len minBound maxBound =
  take len
    . concatMap show
    . bounce
    $ [minBound .. maxBound]

bounce :: [Int] -> [Int]
bounce [] = []
bounce [x] = x : bounce [x]
bounce xs = forward 0
  where
    lastIndex = subtract 1 . length $ xs

    forward :: Int -> [Int]
    forward i
      | i == lastIndex = x : backward (i - 1)
      | otherwise = x : forward (i + 1)
      where
        x = xs !! i

    backward :: Int -> [Int]
    backward i
      | i == 0 = x : forward (i + 1)
      | otherwise = x : backward (i - 1)
      where
        x = xs !! i
