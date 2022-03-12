module Parsable where

-- https://www.codewars.com/kata/547b51dcd587f852e4000ad6/train/haskell

parses :: String -> Bool
parses [] = False
parses x@(c : cs)
  | c == '-' = isInteger cs
  | otherwise = isInteger x
  where
    isInteger :: String -> Bool
    isInteger cs
      | null cs = False
      | otherwise = all (`elem` "0123456789") cs

-- again what learned:
-- function `Text.Read.readMaybe`
