module Animals where

--  https://www.codewars.com/kata/574c5075d27783851800169e/train/haskell

animals :: Int -> Int -> Maybe (Int,Int)
animals heads legs
  | chickens + cows /= heads        = Nothing
  | chickens * 2 + cows * 4 /= legs = Nothing
  | chickens >= 0 && cows >= 0      = Just (chickens, cows)
  | otherwise                       = Nothing
  where
    diff     = legs - heads
    cows     = (diff - heads) `div` 2
    chickens = heads - cows
