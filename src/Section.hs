module Section (section) where

-- https://www.codewars.com/kata/5cb05eee03c3ff002153d4ef/train/haskell

section :: Int -> [Int] -> Maybe Int
section scrollY sizes
  | scrollY >= sum sizes = Nothing
  | otherwise = Just $ find scrollY 0 sizes
  where
    find :: Int -> Int -> [Int] -> Int
    find scrollY count sizes
      | scrollY < head sizes = count
      | otherwise = find (scrollY - head sizes) (count + 1) (tail sizes)
