module IdealElectronDistribution where

-- https://www.codewars.com/kata/59175441e76dc9f9bc00000f/train/haskell

atomicNumber :: Int -> [Int]
atomicNumber = findIn shells
  where
    findIn :: [Int] -> Int -> [Int]
    findIn [] _ = []
    findIn (x : xs) y
      | y > x = x : findIn xs (y - x)
      | otherwise = [y]

shells :: [Int]
shells = map ((* 2) . (^ 2)) [1 ..]
