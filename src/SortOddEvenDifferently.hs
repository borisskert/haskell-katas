module SortOddEvenDifferently (paritySort) where

-- https://www.codewars.com/kata/5a1cb5406975987dd9000028/train/haskell

import Data.List (sort, sortOn)
import Data.Ord (Down (Down))

paritySort :: [Int] -> [Int]
paritySort xs = map fst . sortOn snd $ evens ++ odds
  where
    indexed = zip xs [0 ..] :: [(Int, Int)]
    evens = sortEvens . filter (even . fst) $ indexed
    odds = sortOdds . filter (odd . fst) $ indexed

sortEvens :: [(Int, Int)] -> [(Int, Int)]
sortEvens xs = zip values indices
  where
    indices = map snd xs
    values = sortOn Down . map fst $ xs

sortOdds :: [(Int, Int)] -> [(Int, Int)]
sortOdds xs = zip values indices
  where
    indices = map snd xs
    values = sort . map fst $ xs
