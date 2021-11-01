module ListOfPresents.Kata (howManyGifts) where

-- https://www.codewars.com/kata/5a84d485742ba347b90006b7/train/haskell

import Data.List (sort)

howManyGifts :: Int -> [Int] -> Int
howManyGifts maxBudget gifts = count maxBudget (sort gifts)
  where
    count :: Int -> [Int] -> Int
    count _ [] = 0
    count maxBudget gifts
      | currentGift > maxBudget = 0
      | otherwise = 1 + howManyGifts (maxBudget - currentGift) otherGifts
      where
        currentGift = head gifts :: Int
        otherGifts = tail gifts :: [Int]


-- best practice:
-- import Data.List (sort)

-- howManyGifts :: Int -> [Int] -> Int
-- howManyGifts maxBudget = length . takeWhile (<= maxBudget) . scanl1 (+) . sort
