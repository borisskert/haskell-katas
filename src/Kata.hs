module Kata (freqSeq) where

-- https://www.codewars.com/kata/585a033e3a36cdc50a00011c/train/haskell

import Data.List (intercalate)


freqSeq :: String -> Char -> String
freqSeq str sep = intercalate [sep] . map toCount $ str
  where
    toCount :: Char -> String
    toCount c = show . length . filter (== c) $ str
