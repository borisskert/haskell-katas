{-# LANGUAGE TupleSections #-}

module SpeedOfLetters (speedify) where

-- https://www.codewars.com/kata/5fc7caa854783c002196f2cb/train/haskell

import Data.List (groupBy, sortOn)
import Data.Maybe (fromJust, fromMaybe, isJust)

speedify :: String -> String
speedify = makeText . rebuildLetters

makeText :: [(Int, Char)] -> String
makeText = go 0
  where
    go :: Int -> [(Int, Char)] -> String
    go _ [] = []
    go index chars@((i, c) : xs)
      | i == index = c : go (index + 1) xs
      | i < index = go index xs
      | otherwise = ' ' : go (index + 1) chars

rebuildLetters :: String -> [(Int, Char)]
rebuildLetters = map last . groupOn fst . sortOn fst . zipWith (curry run) [0 ..]

run :: (Int, Char) -> (Int, Char)
run (index, c) = (,c) . (+ index) . lookupLetter $ c

lookupLetter :: Char -> Int
lookupLetter c
  | isJust mIndex = fromJust mIndex
  | otherwise = error "Letter not found"
  where
    mIndex = lookup c letterIndices

letterIndices :: [(Char, Int)]
letterIndices = zip ['A' .. 'Z'] [0 ..]

groupOn :: (Eq b) => (a -> b) -> [a] -> [[a]]
groupOn get = groupBy (\a b -> get a == get b)
