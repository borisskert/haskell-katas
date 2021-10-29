module Codewars.G964.Compsqstrings where

-- https://www.codewars.com/kata/56f253dd75e340ff670002ac/train/haskell

import Data.List (intercalate)

compose :: String -> String -> String
compose s1 s2 = intercalate "\n" . zipWith toLine lines2 . zip [1 ..] $ lines1
  where
    lines1 = lines s1 :: [String]
    lines2 = reverse . lines $ s2 :: [String]

    toLine :: String -> (Int, String) -> String
    toLine b (index, a) = start ++ end
      where
        start = prefix index a :: String
        endLength = length b - index + 1 :: Int
        end = prefix endLength b

prefix :: Int -> [a] -> [a]
prefix = sublist 0

sublist :: Int -> Int -> [a] -> [a]
sublist begin end = map snd . filter ((\x -> x >= begin && x < end) . fst) . zip [0 ..]
