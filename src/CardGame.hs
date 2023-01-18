module CardGame where

--  https://www.codewars.com/kata/61fef3a2d8fa98021d38c4e5/train/haskell

cardGame :: Int -> Int
cardGame 0 = 0
cardGame n
  | n > 4 && n `mod` 4 == 0 = 1 + cardGame (n - 2)
  | even n = half + cardGame (half - 1)
  | otherwise = n - cardGame (n - 1)
  where
    half = n `div` 2
