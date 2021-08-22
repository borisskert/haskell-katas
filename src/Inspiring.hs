module Inspiring where

-- https://www.codewars.com/kata/5939ab6eed348a945f0007b2/solutions/haskell

import Data.List (maximumBy)


longestWord :: String -> String
longestWord text = toWordOnly . maximumBy compareLength . map toWordWithLength . words $ text
  where
    toWordWithLength :: String -> (Int, String)
    toWordWithLength text = (length text, text)

    compareLength (lengthA, _) (lengthB, _) = compare lengthA lengthB

    toWordOnly :: (Int, String) -> String
    toWordOnly (_, text) = text
