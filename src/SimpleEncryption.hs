module SimpleEncryption where

--  https://www.codewars.com/kata/5848565e273af816fb000449/train/haskell

import Data.Char (ord)

encryptThis :: String -> String
encryptThis = unwords . map encrypt . words
  where
    encrypt :: String -> String
    encrypt (c : cs) = ascii c ++ switch cs

    ascii :: Char -> String
    ascii c = show . ord $ c

    switch :: String -> String
    switch [] = []
    switch [c] = [c]
    switch (c : cs) = [last cs] ++ init cs ++ [c]
