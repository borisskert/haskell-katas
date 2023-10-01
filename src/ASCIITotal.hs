module ASCIITotal (uniTotal) where

-- https://www.codewars.com/kata/572b6b2772a38bc1e700007a/train/haskell

import Data.Char (ord)

uniTotal :: String -> Int
uniTotal = sum . map ord
