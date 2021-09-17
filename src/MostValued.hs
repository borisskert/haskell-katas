module MostValued where

-- https://www.codewars.com/kata/5dd5128f16eced000e4c42ba

import Data.List (nub, sortBy, maximumBy)
import Data.Char (ord)

solve :: String -> Char
solve xs = snd . maximumBy compareValueLetters $ toValues xs


toValues xs = map (\x -> (toValue x, x)) uniqueLetters :: [(Int, Char)]
  where
    uniqueLetters = nub xs :: [Char]
    withIndices = zip [0..] xs :: [(Int, Char)]

    toValue :: Char -> Int
    toValue x = findLast x withIndices - findFirst x withIndices


compareValueLetters :: (Int, Char) -> (Int, Char) -> Ordering
compareValueLetters (v1, c1) (v2, c2)
  | v1 == v2 = compare c2 c1
  | otherwise = compare v1 v2


findFirst :: Char -> [(Int, Char)] -> Int
findFirst x xs
  | snd current == x = fst current
  | otherwise = findFirst x (tail xs)
  where
    current = head xs :: (Int, Char)


findLast :: Char -> [(Int, Char)] -> Int
findLast x xs
  | snd current == x = fst current
  | otherwise = findLast x (init xs)
  where
    current = last xs :: (Int, Char)
