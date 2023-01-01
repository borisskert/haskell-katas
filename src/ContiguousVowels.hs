module ContiguousVowels (sortByVowels) where

import Data.List (groupBy, maximumBy, sortOn)
import Data.Maybe (fromMaybe)
import Data.Ord (Down (..))

-- https://www.codewars.com/kata/5d2d0d34bceae80027bffddb/train/haskell

sortByVowels :: [String] -> [String]
sortByVowels = map fst . sortOn (Down . snd) . map (\x -> (x, length . mostContiguousVowels $ x))

mostContiguousVowels :: String -> String
mostContiguousVowels = fromMaybe "" . maybeMaximumOn length . filter (isVowel . head) . groupOn isVowel

isVowel :: Char -> Bool
isVowel x = x `elem` "AEIOUaeiou"

groupOn :: (Eq b) => (a -> b) -> [a] -> [[a]]
groupOn get = groupBy (\a b -> get a == get b)

maybeMaximumOn :: (Ord b) => (a -> b) -> [a] -> Maybe a
maybeMaximumOn _ [] = Nothing
maybeMaximumOn f xs = Just . maximumOn f $ xs

maximumOn :: (Ord b) => (a -> b) -> [a] -> a
maximumOn f = maximumBy (\a b -> compare (f a) (f b))
