module AlternateSplit.JorgeVS.Kata where

-- https://www.codewars.com/kata/57814d79a56c88e3e0000786

import Data.List (sortOn)

encrypt :: String -> Int -> String
encrypt cs i
  | i <= 0 = cs
  | otherwise =
    (`encrypt` i')
      . map snd
      . sortOn fst
      . zipWith (curry encryptLetter) [0 ..]
      $ cs
  where
    size = length cs
    mid = (`div` 2) size
    i' = (i `mod` size) - 1

    encryptLetter :: (Int, Char) -> (Int, Char)
    encryptLetter (index, c)
      | even index = (mid + (index `div` 2), c)
      | otherwise = (index `div` 2 - mid, c)

decrypt :: String -> Int -> String
decrypt cs i
  | i <= 0 = cs
  | otherwise =
    (`decrypt` i')
      . map snd
      . sortOn fst
      . zipWith (curry decryptLetter) [0 ..]
      $ cs
  where
    size = length cs
    mid = (`div` 2) size
    i' = (i `mod` size) - 1

    decryptLetter :: (Int, Char) -> (Int, Char)
    decryptLetter (index, c)
      | index < mid = (index * 2 + 1, c)
      | otherwise = ((index - mid) * 2, c)
