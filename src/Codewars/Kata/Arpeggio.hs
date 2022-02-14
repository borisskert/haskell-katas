module Codewars.Kata.Arpeggio where

-- https://www.codewars.com/kata/563c823393305ec84e000048/train/haskell

arpeggio :: Char -> Maybe String
arpeggio 'A' = Just "ACEA"
arpeggio 'B' = Just "BDFB"
arpeggio 'C' = Just "CEGC"
arpeggio 'D' = Just "DFAD"
arpeggio 'E' = Just "EGBE"
arpeggio 'F' = Just "FACF"
arpeggio 'G' = Just "GBDG"
arpeggio _ = Nothing
