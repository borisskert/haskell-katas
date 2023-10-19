module Final where

-- https://www.codewars.com/kata/5951b409aea9beff3f0000c6/train/haskell

finalAttackValue :: Int -> [Int] -> Int
finalAttackValue hero [] = hero
finalAttackValue hero (monster : xs)
  | hero >= monster = finalAttackValue (hero + monster) xs
  | otherwise = finalAttackValue (hero + raise) xs
  where
    raise = gcd hero monster
