module ReplaceWithAlphabetPosition (alphabetPosition) where

-- https://www.codewars.com/kata/546f922b54af40e1e90001da/train/haskell

import Data.Char (isAscii, isLetter, ord, toUpper)

alphabetPosition :: String -> String
alphabetPosition =
  unwords
    . map (show . toPosition)
    . filter isLetter
    . filter isAscii
  where
    toPosition :: Char -> Int
    toPosition = (+ offset) . ord . toUpper
      where
        offset = (+ 1) . negate . ord $ 'A'
