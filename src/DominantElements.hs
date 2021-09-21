module DominantElements where

-- https://www.codewars.com/kata/5a04133e32b8b998dc000089/train/haskell

solve :: [Int] -> [Int]
solve [] = []
solve xs
  | isDominant headXs tailXs = headXs : solve tailXs
  | otherwise = solve tailXs
  where
    isDominant :: Int -> [Int] -> Bool
    isDominant i ys = not . any (i <=) $ ys

    headXs = head xs
    tailXs = tail xs
