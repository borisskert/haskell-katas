module VowelIndices where

-- https://www.codewars.com/kata/5680781b6b7c2be860000036/train/haskell

import Data.Char (ord)


vowelIndices :: String -> [Integer]
vowelIndices word = map (toInteger . toIndex) $ filter isVowel withIndices
  where
    withIndices = zip [1..] word :: [(Int, Char)]


isVowel :: (Int, Char) -> Bool
isVowel value = toLetter value `elem` vowels 


toLetter (_, letter) = letter


toIndex (index, _) = index


vowels :: [Char]
vowels = ['a', 'e', 'i', 'o', 'u']
