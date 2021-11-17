module TwoSum (twoSum) where

-- https://www.codewars.com/kata/52c31f8e6605bcc646000082/train/haskell

twoSum :: [Int] -> Int -> (Int, Int)
twoSum is i =
  (\((i, _), (j, _)) -> (i, j)) . head
    . filter (\((_, x), (_, y)) -> x + y == i)
    . (\xs -> [(x, y) | x <- xs, y <- xs, fst x /= fst y])
    . zip [0 ..]
    $ is
