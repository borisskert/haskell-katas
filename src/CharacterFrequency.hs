module CharacterFrequency (letterFrequency) where

--  https://www.codewars.com/kata/53e895e28f9e66a56900011a/train/haskell

import Data.Char (isLetter, toLower)
import Data.List (nub, sortBy)

letterFrequency :: String -> [(Char, Int)]
letterFrequency cs = sortBy compareCountThenLetter . map (\c -> (c, count c)) . nub $ lowerCase
  where
    lowerCase = map toLower . filter isLetter $ cs

    count :: Char -> Int
    count c = length . filter (== c) $ lowerCase

compareCountThenLetter :: (Char, Int) -> (Char, Int) -> Ordering
compareCountThenLetter (c1, i1) (c2, i2)
  | i1 == i2 = compare c1 c2
  | otherwise = compare i2 i1
