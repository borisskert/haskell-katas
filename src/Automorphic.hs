module Automorphic where

-- https://www.codewars.com/kata/5a58d889880385c2f40000aa/train/haskell

--best practice:
--import Data.Bool
--import Data.List
--
--automorphic :: Integer -> String
--automorphic n = bool "Not!!" "Automorphic" $ show n `isSuffixOf` show (n^2)


import Data.Char (digitToInt)
import Data.List (isSuffixOf)


automorphic :: Integer -> String
automorphic n
  | isAutomorphic = "Automorphic"
  | otherwise     = "Not!!"
  where
    squareDigits = toDigits (n ^ 2) :: [Integer]
    digits = toDigits n :: [Integer]
    isAutomorphic = isSuffixOf digits squareDigits :: Bool


toDigits :: Integer -> [Integer]
toDigits = map toInteger . map digitToInt . show
