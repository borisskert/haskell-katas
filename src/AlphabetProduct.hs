module AlphabetProduct (alphabet) where

-- https://www.codewars.com/kata/63b06ea0c9e1ce000f1e2407/train/haskell

alphabet :: [Int] -> Int
alphabet xs = d
  where
    a = minimum xs
    withoutA = (`without` a) xs
    b = minimum withoutA
    ab = a * b
    withoutAB = (`without` ab) . (`without` b) $ withoutA
    c = minimum withoutAB
    bc = b * c
    withoutABC = (`without` bc) . (`without` c) $ withoutAB
    d = minimum withoutABC

without :: [Int] -> Int -> [Int]
without [] _ = []
without (x : xs) i
  | x == i = xs
  | otherwise = x : (xs `without` i)
