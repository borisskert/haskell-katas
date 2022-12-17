module MissingAlphabet (insertMissingLetters) where

--  https://www.codewars.com/kata/5ad1e412cc2be1dbfb000016/train/haskell

import Data.Char (toUpper)

insertMissingLetters :: [Char] -> [Char]
insertMissingLetters text = foldl convert [] text
  where
    convert :: [Char] -> Char -> [Char]
    convert r c
      | c `elem` r = r ++ [c]
      | otherwise = r ++ c : abc
      where
        abc = map toUpper . filter (`notElem` text ) . dropWhile (/= c) $ ['a'..'z']
