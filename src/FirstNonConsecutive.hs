module FirstNonConsecutive (firstNonConsecutive) where

-- https://www.codewars.com/kata/58f8a3a27a5c28d92e000144/train/haskell

firstNonConsecutive :: (Eq a, Enum a) => [a] -> Maybe a
firstNonConsecutive [_] = Nothing
firstNonConsecutive (first:second:others)
  | fromEnum second > fromEnum first + 1 = Just second
  | otherwise = firstNonConsecutive (second : others)
