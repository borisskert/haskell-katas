module Codewars.Kata.Group10 where

-- https://www.codewars.com/kata/5694d22eb15d78fe8d00003a/train/haskell

import Data.List (sort)
import Data.Maybe (fromMaybe)

groupIn10s :: [Int] -> [[Int]]
groupIn10s [] = []
groupIn10s xs = map (fromMaybe [] . (`lookup` groups)) tens
  where
    groups = groupOnKey tenner . sort $ xs :: [(Int, [Int])]
    tens = [0, 10 .. (maximum . map fst $ groups)] :: [Int]

tenner :: Int -> Int
tenner = (* 10) . (`div` 10)

-- see https://hackage.haskell.org/package/extra-1.7.12/docs/src/Data.List.Extra.html#groupOnKey
groupOnKey :: Eq k => (a -> k) -> [a] -> [(k, [a])]
groupOnKey _ [] = []
groupOnKey f (x : xs) = (fx, x : yes) : groupOnKey f no
  where
    fx = f x
    (yes, no) = span (\y -> fx == f y) xs
