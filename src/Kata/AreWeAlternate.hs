module Kata.AreWeAlternate (isAlt) where

--  https://www.codewars.com/kata/59325dc15dbb44b2440000af/train/haskell

import Data.List.Split (divvy)

isAlt :: String -> Bool
isAlt = all isMixed . divvy 2 1

isMixed :: [Char] -> Bool
isMixed (a : b : _) = isVovel a /= isVovel b

isVovel :: Char -> Bool
isVovel = (`elem` "aeiouAEIOU")
