module PlentyOfFishInThePond.Kata (fish) where

--  https://www.codewars.com/kata/5904be220881cb68be00007d/train/haskell

import Data.Char (digitToInt)
import Data.List (sort)

fish :: String -> Int
fish = fst . foldl eat (1, 0) . sort . map digitToInt

eat :: (Int, Int) -> Int -> (Int, Int)
eat me@(size, amount) other
  | other > size = me
  | newAmount >= limit = (size + 1, newAmount - limit)
  | otherwise = (size, newAmount)
  where
    newAmount = amount + other
    limit = size * 4
