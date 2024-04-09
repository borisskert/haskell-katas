module TopWords (top3) where

-- https://www.codewars.com/kata/51e056fe544cf36c410000fb/train/haskell

import Data.Char (isLetter, toLower)
import qualified Data.List as List (delete, insert)
import Data.Map (Map)
import qualified Data.Map as Map (empty, insert, lookup)
import Data.Maybe (fromMaybe)
import Prelude hiding (lookup)

top3 :: [Char] -> [[Char]]
top3 =
  take 3
    . topWords
    . countWords
    . filter isValidWord
    . words
    . map (toLower . validWordCharacter)

isValidWord :: String -> Bool
isValidWord xs
  | any isLetter xs = True
  | otherwise = False

validWordCharacter :: Char -> Char
validWordCharacter '\'' = '\''
validWordCharacter x
  | isLetter x = x
  | otherwise = ' '

type CountedWords = (Map String Int, Map Int [String], Int)

topWords :: CountedWords -> [String]
topWords (_, _, 0) = []
topWords (countByWords, wordsByCount, mostCount) =
  (++ furtherTopWords)
    . fromMaybe []
    . Map.lookup mostCount
    $ wordsByCount
  where
    furtherTopWords = topWords (countByWords, wordsByCount, mostCount - 1)

countWords :: [String] -> CountedWords
countWords words = go words (Map.empty, Map.empty, 0)
  where
    go :: [String] -> CountedWords -> CountedWords
    go [] result = result
    go (x : xs) (countByWords, wordsByCount, mostCount) = go xs (newCountByWords, newWordsByCount, newMostCount)
      where
        occurence = fromMaybe 0 . Map.lookup x $ countByWords
        newOccurence = occurence + 1
        newCountByWords = Map.insert x newOccurence countByWords

        wordsByOccurence = fromMaybe [] . Map.lookup occurence $ wordsByCount
        wordsByNewOccurence = fromMaybe [] . Map.lookup newOccurence $ wordsByCount

        newWordsByOccurence = List.delete x wordsByOccurence
        newWordsByNewOccurence = List.insert x wordsByNewOccurence
        newWordsByCount =
          Map.insert occurence newWordsByOccurence
            . Map.insert newOccurence newWordsByNewOccurence
            $ wordsByCount

        newMostCount = max mostCount newOccurence
