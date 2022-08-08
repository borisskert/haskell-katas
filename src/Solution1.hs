module Solution1 where

--  https://www.codewars.com/kata/5ce399e0047a45001c853c2b/train/haskell

partsSum :: [Integer] -> [Integer]
partsSum xs = sum' : go sum' xs
  where
    sum' = sum xs
    
    go :: Integer -> [Integer] -> [Integer]
    go _ [] = []
    go s (x:xs) = s - x : go (s - x) xs
