module Battle where

-- https://www.codewars.com/kata/595519279be6c575b5000016/train/haskell

import Data.Char (ord)


battle :: String -> String -> String
battle a b
  | powerA > powerB = b
  | powerA < powerB = a
  | otherwise = "Tie!"
  where
    toPower :: Char -> Int
    toPower = ((-) offset) . ord
      where
        offset = ord 'A' - 1

    powerA = sum . map toPower $ a
    powerB = sum . map toPower $ b
