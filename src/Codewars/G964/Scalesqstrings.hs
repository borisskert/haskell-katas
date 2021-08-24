module Codewars.G964.Scalesqstrings where

-- https://www.codewars.com/kata/56ed20a2c4e5d69155000301/train/haskell

import Data.List (intercalate)


scale :: [Char] -> Int -> Int -> [Char]
scale strng k n = intercalate "\n" . filter (not . null) . map (verticalRepeat n . horizontalRepeat k) . filter (not . null) $ lines strng


horizontalRepeat :: Int -> [Char] -> [Char]
horizontalRepeat k = concatMap (replicate k)


verticalRepeat :: Int -> [Char] -> [Char]
verticalRepeat n = intercalate "\n" . filter (not . null) . replicate n
