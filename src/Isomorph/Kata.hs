module Isomorph.Kata (isomorph) where

-- https://www.codewars.com/kata/59dbab4d7997cb350000007f/train/haskell

import Data.Maybe (fromMaybe)

isomorph :: String -> String -> Bool
isomorph a b = normalizedA == normalizedB
  where
    normalizedA = normalize a
    normalizedB = normalize b

normalize :: (Eq a) => [a] -> [Int]
normalize = map snd . foldl go []
  where
    go :: (Eq a) => [(a, Int)] -> a -> [(a, Int)]
    go xs x = xs ++ [(x, i)]
      where
        i = fromMaybe (length xs) . lookup x $ xs
