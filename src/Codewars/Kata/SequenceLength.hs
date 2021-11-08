module Codewars.Kata.SequenceLength (lengthOfSequence) where

-- https://www.codewars.com/kata/5566b0dd450172dfc4000005/train/haskell

lengthOfSequence :: (Eq a) => [a] -> a -> Maybe Int
lengthOfSequence xs i
  | length occurrences /= 2 = Nothing
  | otherwise = Just (second - first + 1)
  where
    occurrences = filter ((== i) . snd) . zip [0 ..] $ xs

    first = fst . head $ occurrences
    second = fst . head . tail $ occurrences


-- again what learned:
-- import Data.List (findIndices)

-- lengthOfSequence :: (Eq a) => [a] -> a -> Maybe Int
-- lengthOfSequence xs x = case findIndices (==x) xs of
--                           [a,b] -> Just $ b - a + 1
--                           _     -> Nothing
