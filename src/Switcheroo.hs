module Switcheroo where

-- https://www.codewars.com/kata/55d410c492e6ed767000004f/train/haskell

--best practice:
-- vowel2Index :: String -> String
-- vowel2Index = concat . zipWith replace [1..] where
--   replace i c
--     | c `elem` "aeiouAEIOU" = show i
--     | otherwise = [c]

vowel2Index :: String -> String
vowel2Index = concatMap vowelToIndex . withIndices
  where
    withIndices :: String -> [(Int, Char)]
    withIndices = zip [1..]

    vowelToIndex :: (Int, Char) -> String
    vowelToIndex (index, char)
      | char `elem` "aeiouAEIOU" = show index
      | otherwise = [char]
