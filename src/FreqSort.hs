module FreqSort (solve) where

--  https://www.codewars.com/kata/5a8d2bf60025e9163c0000bc/train/haskell

import Data.List (sortBy)

solve :: [Int] -> [Int]
solve xs =
  map snd
    . sortBy byFrequency
    . map (\x -> (length . filter (== x) $ xs, x))
    $ xs

byFrequency :: (Int, Int) -> (Int, Int) -> Ordering
byFrequency (count1, x1) (count2, x2)
  | count1 == count2 = compare x1 x2
  | otherwise = compare count2 count1
