module ReplaceAllItems where

-- https://www.codewars.com/kata/57ae18c6e298a7a6d5000c7a/train/haskell

replaceAll :: (Eq a) => [a] -> a -> a -> [a]
replaceAll items target replacement = map replace items
  where
    replace x
      | x == target = replacement
      | otherwise = x
