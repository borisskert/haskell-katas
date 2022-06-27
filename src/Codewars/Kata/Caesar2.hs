module Codewars.Kata.Caesar2 where

--  https://www.codewars.com/kata/55084d3898b323f0aa000546/train/haskell

import Data.Char (isLower, isUpper, ord, toLower, toUpper)
import Data.List (genericLength)
import Data.List.Split (chunksOf)

encodeStr :: String -> Int -> [String]
encodeStr input n = chunksOf size . (prefix ++) . map (caesars n) $ input
  where
    size = ceiling . (/ 5) . (+ 2) . (genericLength :: [a] -> Double) $ input :: Int
    prefix = (\c -> c : [caesars n c]) . toLower . head $ input :: String

decode :: [String] -> String
decode inputs = drop 2 . concatMap (map (caesars offset)) $ inputs
  where
    (prefix1 : prefix2 : _) = head inputs :: [Char]
    offset = ord prefix1 - ord prefix2 :: Int

caesars :: Int -> Char -> Char
caesars n c
  | isLower c = (!! offset) . dropWhile (/= c) $ lowerAlphabet
  | isUpper c = (!! offset) . dropWhile (/= c) $ upperAlphabet
  | otherwise = c
  where
    alphabet = ['a' .. 'z'] :: [Char]
    size = length alphabet :: Int
    offset = n `mod` size :: Int
    lowerAlphabet = cycle alphabet :: [Char]
    upperAlphabet = cycle . map toUpper $ alphabet :: [Char]
