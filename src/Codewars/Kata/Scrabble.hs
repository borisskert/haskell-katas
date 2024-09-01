module Codewars.Kata.Scrabble (getBestWord) where

-- https://www.codewars.com/kata/563f960e3c73813942000015/train/haskell

getBestWord :: [Int] -> [String] -> Int
getBestWord ps = fst . maximumOn (pointsOf . snd) . zip [0 ..]
  where
    pointsOf :: String -> Int
    pointsOf = sum . map pointsOf
      where
        indexOf :: Char -> Int
        indexOf c = fromEnum c - fromEnum 'A'

        pointsOf :: Char -> Int
        pointsOf c = ps !! indexOf c

maximumOn :: (Ord b) => (a -> b) -> [a] -> a
maximumOn f = foldl1 (maxBy f)
  where
    maxBy :: (Ord b) => (a -> b) -> a -> a -> a
    maxBy f a b
      | f b > f a = b
      | otherwise = a
