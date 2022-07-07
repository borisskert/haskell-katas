module BitCounting (countBits) where

--  https://www.codewars.com/kata/526571aae218b8ee490006f4/train/haskell

countBits :: Int -> Int
countBits = popCount

popCount :: Int -> Int
popCount 0 = 0
popCount x
  | remainder == 1 = 1 + popCount divider
  | otherwise = popCount divider
  where
    (divider, remainder) = x `divMod` 2
